using Unity.Netcode;
using UnityEngine;

public class PlayerController : NetworkBehaviour
{
    public float speed = 5f;
    public float mouseSensitivity = 2f;
    public float jumpForce = 5f;
    public float gravity = 9.81f;

    public CharacterController controller;
    private Vector3 velocity;
    private bool isGrounded;
    public GameObject playerCamera;
    private float verticalRotation = 0f;

    public override void OnNetworkSpawn()
    {
        if (!IsOwner)
        {
            // Disable input for non-owners instead of destroying the script
            enabled = false;
            return;
        }
        else
        {
            playerCamera.SetActive(true);
        }
    }

    void Start()
    {
        if (IsOwner)
        {
            Cursor.lockState = CursorLockMode.Locked;
        }
    }

    void FixedUpdate()
    {
        if (!IsOwner) return; // Ensure only the owner processes input

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
}
