using System.Collections.Generic;
using UnityEngine;
using Unity.Netcode;
using System.Linq;

public class GameManager : NetworkBehaviour
{
    public enum GameState { OUTOFGAME, SPAWNPHASE, HIDERPHASE, SEEKERPHASE, DISPLAYWINNER }
    public enum GameWinners { HIDERS, SEEKERS }


    public NetworkVariable<float> gameTime = new NetworkVariable<float>(
        0, 
        NetworkVariableReadPermission.Everyone,
        NetworkVariableWritePermission.Server  
    );

    public NetworkVariable<GameState> gameState = new NetworkVariable<GameState>(
        GameState.OUTOFGAME, 
        NetworkVariableReadPermission.Everyone,
        NetworkVariableWritePermission.Server  
    );

    public NetworkVariable<GameWinners> gameWinners = new NetworkVariable<GameWinners>(
        GameWinners.HIDERS, 
        NetworkVariableReadPermission.Everyone,
        NetworkVariableWritePermission.Server  
    );


    public static GameManager Instance;
    private Dictionary<ulong, GameObject> playerObjects = new Dictionary<ulong, GameObject>();
    public float seekerPhaseTime = 300;
    public float hiderPhaseTime = 30;
    public float spawnPhaseTime = 5;
    public float displaywinnerPhaseTime = 10;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }

    void Update()
    {
        if (!IsHost) return;

        if (gameTime.Value > 0)
        {
            gameTime.Value -= Time.deltaTime;
            if (gameTime.Value <= 0)
            {
                nextPhase(GameWinners.HIDERS);
            }
        }


        if (gameState.Value == GameState.SEEKERPHASE)
        {
            bool everyoneSeeker = true;
            Dictionary<ulong, GameObject>.KeyCollection keyColll = playerObjects.Keys;
            foreach (ulong clientId in keyColll)
            {
                if (!playerObjects[clientId].GetComponent<PlayerController>().IsSeeker.Value)
                {
                    everyoneSeeker = false;
                }
            }

            if (everyoneSeeker)
            {
                nextPhase(GameWinners.SEEKERS);
            }
        }
    }

    void nextPhase(GameWinners winCondition)
    {
        if (gameState.Value == GameState.SPAWNPHASE)
        {
            gameState.Value = GameState.HIDERPHASE;
            gameTime.Value = hiderPhaseTime;
        }
        else if (gameState.Value == GameState.HIDERPHASE)
        {
            gameState.Value = GameState.SEEKERPHASE;
            gameTime.Value = seekerPhaseTime;
        }
        else if (gameState.Value == GameState.SEEKERPHASE)
        {
            gameState.Value = GameState.DISPLAYWINNER;
            gameTime.Value = displaywinnerPhaseTime;
            gameWinners.Value = winCondition;
        }
        else if (gameState.Value == GameState.DISPLAYWINNER)
        {
            gameState.Value = GameState.OUTOFGAME;
            Dictionary<ulong, GameObject>.KeyCollection keyColll = playerObjects.Keys;
            foreach (ulong clientId in keyColll)
            {
                playerObjects[clientId].GetComponent<PlayerController>().IsSeeker.Value = false;
            }
            gameTime.Value = 0;
        }
    }

    public void RegisterPlayer(ulong clientId, GameObject playerObject)
    {
        if (!playerObjects.ContainsKey(clientId))
        {
            playerObjects[clientId] = playerObject;
        }
    }

    public void UnregisterPlayer(ulong clientId)
    {
        if (playerObjects.ContainsKey(clientId))
        {
            playerObjects.Remove(clientId);
        }
    }

    public GameObject GetPlayer(ulong clientId)
    {
        return playerObjects.TryGetValue(clientId, out GameObject player) ? player : null;
    }

    public void StartGame()
    {
        Dictionary<ulong, GameObject>.KeyCollection keyColl = playerObjects.Keys;

        System.Random rand = new System.Random();
        // Some witchcraft idk
        ulong randomKey = playerObjects.Keys.ElementAt(rand.Next(playerObjects.Count));

    	playerObjects[randomKey].GetComponent<PlayerController>().IsSeeker.Value = true;

        gameTime.Value = spawnPhaseTime;
        gameState.Value = GameState.SPAWNPHASE;
    }
}
 