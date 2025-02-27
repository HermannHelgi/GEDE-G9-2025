using Unity.Netcode;
using UnityEngine;

public class PlayerNetwork : NetworkBehaviour
{
    private readonly NetworkVariable<Vector3> pos = new(writePerm: NetworkVariableWritePermission.Owner);
    private readonly NetworkVariable<Quaternion> rot = new(writePerm: NetworkVariableWritePermission.Owner);

    void Update()
    {
        if (IsOwner)
        {
            pos.Value = transform.position;
            rot.Value = transform.rotation;
        }
        else
        {
            transform.position = pos.Value;
            transform.rotation = rot.Value;
        }
    }
}
