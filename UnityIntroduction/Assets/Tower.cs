using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tower : MonoBehaviour
{
    public GameObject prefab;
    public int blocks;
    public int height = 10;
    public float radius;
    // Start is called before the first frame update
    void Start()
    {
        float angle = Mathf.PI * 2.0f / (float) blocks;
        for(int row = 0 ; row < height ; row ++)
        {
            for (int i = 0 ; i < blocks ; i ++)
            {
                float a = angle * i + (0.5f * angle * row);
                Vector3 pos = new Vector3(
                    Mathf.Sin(a) * radius,
                    0.5f + row,
                    Mathf.Cos(a) * radius
                );
                pos = transform.TransformPoint(pos);
                GameObject block = GameObject.Instantiate(prefab, pos, Quaternion.Euler(0, a * Mathf.Rad2Deg, 0));
                block.GetComponent<Renderer>().material.color = Color.HSVToRGB(Random.Range(0.0f, 1.0f), 1, 1);
                block.transform.parent = transform;
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
