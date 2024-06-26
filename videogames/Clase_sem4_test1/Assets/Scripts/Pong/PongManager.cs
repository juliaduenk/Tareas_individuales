/*
Game Manager for the pong demo
Julia Duenkelsbuehler
2024-04-09
*/



using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PongManager : MonoBehaviour
{

    [SerializeField] GameObject ball;
    
    [SerializeField] GameObject ballPrefab;

    [SerializeField] float speed;
   public int pointsLeft;
    public int pointsRight;
    // Start is called before the first frame update
    void Start()
    {
        InitGame();
    }

    // Update is called once per frame
    void Update()
    {
         if(Input.GetKeyDown(KeyCode.R) && ball !=null){
            Destroy(ball);
            InitGame();
         }
    }

    void InitGame()
    {
        StartCoroutine(SeverBall());
    }
        IEnumerator SeverBall()
        {
        yield return new WaitForSeconds (1.0f);
        ball=Instantiate (ballPrefab);
        ball.GetComponent<Rigidbody2D>().velocity = Random.insideUnitCircle.normalized * speed;
        }
    

     //increase the score of the specifed player

     public void Score(string side){
        if (side=="left"){
            pointsLeft++;
            InitGame();
        } else if (side=="right"){
            pointsRight++;
            InitGame();
        }
     }



}
