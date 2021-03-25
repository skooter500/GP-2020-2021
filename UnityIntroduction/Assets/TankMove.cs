using System.Collections; // Namespaces
using System.Collections.Generic;
using UnityEngine;

public class TankMove : MonoBehaviour
{
    [Range(-5, 5)]
    public float speed = 1;

    public float rotSpeed = 20;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float v = Input.GetAxis("Vertical");
        transform.Translate(0, 0, speed * Time.deltaTime * v);

        float h = Input.GetAxis("Horizontal");
        transform.Rotate(0, rotSpeed * Time.deltaTime * h, 0);
    }
}
