//
//  colorGame.swift
//  RGBColorGame
//
//  Created by Chakane Shegog on 5/5/21.
//

import Foundation
import UIKit

struct colorGameModel {
    
    // origional red green and blue
    let red = UIColor(red: 220, green: 0, blue: 0, alpha: 1.0)
    let green = UIColor(red: 0, green: 220, blue: 0, alpha: 1.0)
    let blue = UIColor(red: 0, green: 0, blue: 220, alpha: 1.0)
    
    
    func randomColor() -> UIColor {
        let randNum1 = CGFloat.random(in: 0...1)
        let randNum2 = CGFloat.random(in: 0...1)
        let randNum3 = CGFloat.random(in: 0...1)
        
        let myColor = UIColor(red: randNum1, green: randNum2, blue: randNum3, alpha: 1.0)
        return myColor
        
    }
    
    func correctGuess() -> UIColor {
        let randNum1 = CGFloat.random(in: 0...1)
        let randNum2 = CGFloat.random(in: 0...1)
        let randNum3 = CGFloat.random(in: 0...1)
        
        let myColor = UIColor(red: randNum1, green: randNum2, blue: randNum3, alpha: 1.0)
        return myColor
        
    }
        
    
    
    
    
}
