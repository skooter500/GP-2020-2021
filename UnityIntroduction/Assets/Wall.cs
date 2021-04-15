using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wall : MonoBehaviour
{
    public GameObject prefab;
    public int size = 10;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    void Awake()
    {
        int half = size / 2;
        for(int row = 0 ; row < size ; row ++)
        {
            for(int col = 0 ; col < size ; col ++)
            {
                Vector3 pos = new Vector3(-half + (col * 1.1f), 0.5f + (row * 1.1f), 0);
                pos = transform.TransformPoint(pos);
                GameObject brick = GameObject.Instantiate(prefab, pos, transform.rotation);
                brick.GetComponent<Renderer>().material.color = Color.HSVToRGB(Random.Range(0.0f, 1.0f), 1, 1);
                brick.transform.parent = transform;
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
