using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tank : MonoBehaviour
{
    public Transform bulletSpawn;
    public GameObject bulletPrefab;
    public float speed = 10;

    [Range(0, 360)]
    public float rotSpeed = 90;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        /*
        GameObject
        MonoBehaviour
        Vector3
        Vector2
        Quaternion
        Camera
        Renderer - MeshRenderer, LineRenderer
        RigidBody
        RigidBody2D
        Collider - MeshCollder, BoxCollider
        */

        float h = Input.GetAxis("Vertical");

        transform.Translate(0, 0, speed * Time.deltaTime * h);
        transform.Rotate(0, rotSpeed * Time.deltaTime * Input.GetAxis("Horizontal"), 0);

        if (Input.GetButtonDown("Fire1"))
        {
            GameObject.Instantiate(bulletPrefab, bulletSpawn.position, transform.rotation);
        }

    }
}
