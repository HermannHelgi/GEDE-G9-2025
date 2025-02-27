using Unity.Netcode;
using UnityEngine;
public class NetworkButtons : MonoBehaviour
{
    public GameObject uicamera;
    public GameObject canvas;


    public void HostGame()
    {
        uicamera.SetActive(false);
        canvas.SetActive(false);

        NetworkManager.Singleton.StartHost();
    }

    public void JoinGame()
    {
        uicamera.SetActive(false);
        canvas.SetActive(false);

        NetworkManager.Singleton.StartClient();
    }
}
