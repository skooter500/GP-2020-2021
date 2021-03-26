using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wall : MonoBehaviour
{
    public int rows = 10;
    public int cols = 10;
    // Start is called before the first frame update
    void Start()
    {
        for(int row = 0 ; row < rows ; row ++)
        {
            for(int col = 0 ; col < cols ; col ++)
            {
                GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
                Vector3 localPos = new Vector3(col, row, 0);
                cube.transform.position = transform.TransformPoint(localPos);
                cube.transform.rotation = transform.rotation;
                cube.GetComponent<Renderer>().material.color = 
                    Color.HSVToRGB(Random.Range(0.0f, 1.0f), 1, 1);
                cube.transform.parent = this.transform;
                cube.AddComponent<Rigidbody>();
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
