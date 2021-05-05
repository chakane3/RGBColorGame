//
//  ViewController.swift
//  RGBColorGame
//
//  Created by Chakane Shegog on 5/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    
    var game = colorGameModel()
    
    

    

    @IBAction func changeColor(_ sender: UIButton) {
        // let correctGuess = game.correctGuess()
        switch sender.tag {
        case 0:
            buttonOne.backgroundColor = game.randomColor()

        case 1:
            buttonTwo.backgroundColor = game.randomColor()

        case 2:
            buttonThree.backgroundColor = game.randomColor()

            
        default:
            print("nope")
        }
    }
    
    @IBAction func newGame(_ sender: Any) {
        buttonOne.backgroundColor = game.red
        buttonTwo.backgroundColor = game.green
        buttonThree.backgroundColor = game.blue
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // set the colors to red, green, blue
        buttonOne.backgroundColor = game.red
        buttonTwo.backgroundColor = game.green
        buttonThree.backgroundColor = game.blue
        
    }


}

