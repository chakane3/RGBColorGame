//
//  ViewController.swift
//  RGBColorGame
//
//  Created by Chakane Shegog on 5/5/21.
//

import UIKit

class ViewController: UIViewController {

    
// MARK: - Outlets and Properties
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int = 0
    var game = colorGameModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // set to random colors
        buttonOne.backgroundColor = game.red
        buttonTwo.backgroundColor = game.green
        buttonThree.backgroundColor = game.blue
    }
    
    
    // MARK: - Actions
    
    // Setting changes to the view based on "game"
    @IBAction func changeColor(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            let selectedButton = game.getCGFloatFromButton(button: sender)
            let correct = game.dominantColor(buttonOne: buttonOne, buttonTwo: buttonTwo, buttonThree: buttonThree)
            if selectedButton == correct {
                displayLabel.text = "Correct guess!"
                score += 1
                scoreLabel.text = String(score)
                
            } else {
                displayLabel.text = "try again"
            }
    
        case 1:
            let selectedButton = game.getCGFloatFromButton(button: sender)
            let correct = game.dominantColor(buttonOne: buttonOne, buttonTwo: buttonTwo, buttonThree: buttonThree)
            if selectedButton == correct {
                displayLabel.text = "Correct guess!"
                score += 1
                scoreLabel.text = String(score)
            } else {
                displayLabel.text = "try again"
            }

        case 2:
            
            let selectedButton = game.getCGFloatFromButton(button: sender)
            let correct = game.dominantColor(buttonOne: buttonOne, buttonTwo: buttonTwo, buttonThree: buttonThree)
            if selectedButton == correct {
                displayLabel.text = "Correct guess!"
                score += 1
                scoreLabel.text = String(score)
            } else {
                displayLabel.text = "try again"
            }
            
        default:
            print("nope")
        }
    }
    
    @IBAction func newGame(_ sender: Any) {
        buttonOne.backgroundColor = game.randomColor()
        buttonTwo.backgroundColor = game.randomColor()
        buttonThree.backgroundColor = game.randomColor()
        displayLabel.text = "Choose the most dominant color"
    }
    

}

