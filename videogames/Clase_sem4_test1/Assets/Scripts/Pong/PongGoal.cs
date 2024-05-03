
/*
Detect when the ball hits the goal
Julia Duenkelsbuehler
2024-04-09
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PongGoal : MonoBehaviour
{ 
    [SerializeField] string side;
    PongManager manager;


    // Start is called before the first frame update
    void Start()
    {
        manager=GameObject.FindWithTag("GameController").GetComponent<PongManager>();
    }

   //detect when the ball goes out of bounds
   void OnCollisionEnter2D(Collision2D other){
    manager.Score(side);
    Destroy (other.gameObject);
   }
}
