using System;
using TMPro;
using Unity.Netcode;
using UnityEngine;
using UnityEngine.UI;

public class PlayerController : NetworkBehaviour
{
    public NetworkVariable<bool> IsSeeker = new NetworkVariable<bool>(
        false, 
        NetworkVariableReadPermission.Everyone,
        NetworkVariableWritePermission.Server  
    );

    public float speed = 5f;
    public float seekerSpeed = 7f;
    public float mouseSensitivity = 2f;
    public float jumpForce = 5f;
    public float gravity = 9.81f;
    public float raycastlength;
    public GameObject playerCanvas;

    public Image crosshairhorizontal;
    public Image crosshairvertical;

    public CharacterController controller;
    private Vector3 velocity;
    private bool isGrounded;
    public GameObject playerCamera;
    private float verticalRotation = 0f;
    Animator PlayerAnimation;

    public override void OnNetworkSpawn()
    {
        GameManager.Instance.RegisterPlayer(OwnerClientId, gameObject);
        playerId = OwnerClientId;

        if (!IsOwner)
        {
            enabled = false;
            return;
        }
        else
        {
            playerCamera.SetActive(true);
            playerCanvas.SetActive(true);
        }
    }

    public override void OnNetworkDespawn()
    {
        GameManager.Instance.UnregisterPlayer(OwnerClientId);
        playerId = OwnerClientId;
    }

    void Start()
    {
        if (IsOwner)
        {
            Cursor.lockState = CursorLockMode.Locked;
        }
        PlayerAnimation = GetComponent<Animator>();
    }
    
    void Update()
    {
        if (!IsOwner) return; // Ensure only the owner processes input

        if (GameManager.Instance.gameState.Value == GameManager.GameState.OUTOFGAME)
        {
            if (Vector3.Distance(spawn, gameObject.transform.position) > distanceLiableFromSpawn)
            {
                gameObject.transform.position = spawn;
            }
            else
            {
                hidersWinDisplayText.SetActive(false);
                seekersWinDisplayText.SetActive(false);
                updateMovement();
                updateCrosshair();
                handleInput();
            }
        }
        else if (GameManager.Instance.gameState.Value == GameManager.GameState.SPAWNPHASE)
        {
            blackout.SetActive(true);
            gameObject.transform.position = spawnLocation + new Vector3(UnityEngine.Random.Range(0, randomrange), 0, UnityEngine.Random.Range(0, randomrange));
        }
        else if (GameManager.Instance.gameState.Value == GameManager.GameState.HIDERPHASE)
        {
            if (!IsSeeker.Value)
            {
                if (blackout.activeSelf)
                {
                    blackout.SetActive(false);
                }
                updateMovement();
                handleInput();
            }
            updateCrosshair();

        }
        else if (GameManager.Instance.gameState.Value == GameManager.GameState.SEEKERPHASE)
        {
            if (blackout.activeSelf)
            {
                blackout.SetActive(false);
            }
            updateMovement();
            updateCrosshair();
            handleInput();
        }
        else if (GameManager.Instance.gameState.Value == GameManager.GameState.DISPLAYWINNER)
        {
            if (GameManager.Instance.gameWinners.Value == GameManager.GameWinners.HIDERS)
            {
                hidersWinDisplayText.SetActive(true);
            }
            else
            {
                seekersWinDisplayText.SetActive(true);
            }

            updateMovement();
            updateCrosshair();
            handleInput();
        }
        
        
        updateTimer();
    }

    void updateTimer()
    {
        TimeSpan time = TimeSpan.FromSeconds(GameManager.Instance.gameTime.Value);
        timer.text = time.ToString("mm':'ss");
    }

    void updateMovement()
    {
        // Mouse look
        float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity;
        float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity;

        transform.Rotate(Vector3.up * mouseX);
        verticalRotation -= mouseY;
        verticalRotation = Mathf.Clamp(verticalRotation, -90f, 90f);
        playerCamera.transform.localRotation = Quaternion.Euler(verticalRotation, 0f, 0f);

        // Movement
        isGrounded = controller.isGrounded;

        float moveX = Input.GetAxis("Horizontal");
        float moveZ = Input.GetAxis("Vertical");


        Vector3 move = transform.right * moveX + transform.forward * moveZ;
        if (move != new Vector3(0,0,0))
        {
            PlayerAnimation.SetBool("isWalking",true);
        }
        else
        {
            PlayerAnimation.SetBool("isWalking",false);
        }
        controller.Move(move * speed * Time.deltaTime);

        // Jumping
        if (isGrounded && Input.GetButtonDown("Jump"))
        {
            velocity.y = jumpForce;
        }

        // Gravity
        velocity.y -= gravity * Time.deltaTime;
        controller.Move(velocity * Time.deltaTime);
    }

    void updateCrosshair()
    {
        RaycastHit hit;
        if (Physics.Raycast(playerCamera.transform.position, playerCamera.transform.rotation * Vector3.forward, out hit, raycastlength))
        {
            var button = hit.transform.GetComponent<ButtonScript>();
            var script = hit.transform.GetComponent<PlayerController>();
            if ((IsHost && button != null) || (IsSeeker.Value && script != null && !script.IsSeeker.Value))
            {
                crosshairhorizontal.color = Color.red;
                crosshairvertical.color = Color.red;
            }
            else
            {
                crosshairhorizontal.color = Color.white;
                crosshairvertical.color = Color.white;
            }
        }
        else
        {
            crosshairhorizontal.color = Color.white;
            crosshairvertical.color = Color.white;
        }
    }

    void handleInput()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            RaycastHit hit;
            if (Physics.Raycast(playerCamera.transform.position, playerCamera.transform.rotation * Vector3.forward, out hit, raycastlength))
            {
                var button = hit.transform.GetComponent<ButtonScript>();
                var script = hit.transform.GetComponent<PlayerController>();
                if (IsHost && button != null)
                {
                    GameManager.Instance.StartGame();
                }
                else if (IsSeeker.Value && script != null && !script.IsSeeker.Value)
                {
                    ChangeRoleForPlayerServerRpc(script.playerId, true);
                }
            }
        }
    }


    // This function is what essentially changes a person from seeker to hider.
    [ServerRpc(RequireOwnership = false)]
    private void ChangeRoleForPlayerServerRpc(ulong targetClientId, bool newValue, ServerRpcParams rpcParams = default)
    {
        if (NetworkManager.Singleton.ConnectedClients.ContainsKey(targetClientId))
        {
            PlayerController targetPlayer = NetworkManager.Singleton.ConnectedClients[targetClientId].PlayerObject.GetComponent<PlayerController>();

            if (targetPlayer != null)
            {
                targetPlayer.IsSeeker.Value = newValue; 
            }
        }
    }
}
