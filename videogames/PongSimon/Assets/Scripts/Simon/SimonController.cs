using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class SimonController : MonoBehaviour
{
    [SerializeField] List<SimonButton> buttons;
    [SerializeField] List<int> sequence;
    [SerializeField] float delay;
    [SerializeField] int level;
    [SerializeField] bool playerTurn = false;

    [SerializeField] int counter = 0;
    [SerializeField] int numButtonss;
    [SerializeField] GameObject buttonPrefab;
    [SerializeField] Transform buttonParent;
    [SerializeField] TMP_Text scoreText; // For displaying the score
    [SerializeField] TMP_Text maxTurnsText; // For displaying the max turns
    [SerializeField] TMP_Text gameOverText; // For displaying the game over message
    [SerializeField] int maxTurns = 0; // To keep track of the highest number of turns completed

    // Start is called before the first frame update
    void Start()
    {// Configure the buttons to be used in the game

        PrepareButtons();
    }
// Configure the callback functions for the buttons
    void PrepareButtons()
    {
        for (int i=0; i<numButtonss; i++) {
            int index = i;
            GameObject newButton = Instantiate(buttonPrefab, buttonParent);
            newButton.GetComponent<Image>().color = Color.HSVToRGB((float)index/numButtonss, 1, 1);

            newButton.GetComponent<SimonButton>().Init(index);
            buttons.Add(newButton.GetComponent<SimonButton>());
            buttons[i].gameObject.GetComponent<Button>().onClick.AddListener(() => ButtonPressed(index));
        }
        AddToSequence();
    }
  // Main function to validate that the button pressed by the user 
    // corresponds with the sequence generated by the CPU
    public void ButtonPressed(int index) {
    if (playerTurn) {
        if (index == sequence[counter++]) {
            buttons[index].Highlight();
            scoreText.text = "Score: " + level; // Update the score text here
            if (counter == sequence.Count) {
                playerTurn = false;
                level++;
                counter = 0;
                if (level > maxTurns) {
                    maxTurns = level;
                    maxTurnsText.text = "Max Turns: " + maxTurns;
                }
                AddToSequence();
            }
        } else {
            gameOverText.text = "Game Over! Your final score is: " + level; // Update the game over text here
            RestartGame();
        }
    }
}

// Add another number to the sequence and display it
    void AddToSequence()
    {
        sequence.Add(Random.Range(0, buttons.Count));
        StartCoroutine(PlaySequence());
    }
// Display every button in the sequence so far
    IEnumerator PlaySequence()
    {  // Add an initial delay before showing the sequence
        yield return new WaitForSeconds(delay);
        foreach (int index in sequence) {
            buttons[index].Highlight();
            yield return new WaitForSeconds(delay);
        }
        // Switch the turn over to the player
        playerTurn = true;
    }

    void RestartGame() {
    sequence.Clear();
    level = 0;
    counter = 0;
    playerTurn = false;
    AddToSequence();
    scoreText.text = "Score: " + level; // Reset the score text here
}
}
