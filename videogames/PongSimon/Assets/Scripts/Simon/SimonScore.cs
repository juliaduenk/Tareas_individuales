/*

Julia Duenkelsbuehler
2024-04-30
*/


using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;


public class SimonScores : MonoBehaviour
{

    [SerializeField] TMP_Text scoreText;

    // Start is called before the first frame update
    void Start()
    {
        int score = PlayerPrefs.GetInt("score",0);
        scoreText.text="score: "+ score;
        
    }

    public void StartAgain(){
        SceneManager.LoadScene("simon");
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}