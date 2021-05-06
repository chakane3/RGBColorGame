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
    
    
    // generate a random color
    func randomColor() -> UIColor {
        // random colors of rgb
        let randNum1 = CGFloat.random(in: 0...1)
        let randNum2 = CGFloat.random(in: 0...1)
        let randNum3 = CGFloat.random(in: 0...1)
        let myColor = UIColor(red: randNum1, green: randNum2, blue: randNum3, alpha: 1.0)
        return myColor
    }
    
    // find the dominant color (alpha included)
    func dominantColor(buttonOne: UIButton!, buttonTwo: UIButton!, buttonThree: UIButton!) -> CGFloat{
        let color1 = buttonOne.layer.backgroundColor!.components
        let color2  =  buttonTwo.layer.backgroundColor!.components
        let color3  = buttonThree.layer.backgroundColor!.components
        let Color1Arr = color1
        let Color2Arr = color2
        let Color3Arr = color3
        var CGFloatIndexArr = [Color1Arr!.reduce(0, +), Color2Arr!.reduce(0, +), Color3Arr!.reduce(0, +)]
        CGFloatIndexArr = CGFloatIndexArr.sorted()
        print(CGFloatIndexArr[0])
        print(CGFloatIndexArr[1])
        print(CGFloatIndexArr[2])
        print()
        return CGFloatIndexArr[0]
    }
    
    // get the CG value of a color (alpha included)
    func getCGFloatFromButton(button: UIButton!) -> CGFloat{
        let color = button.layer.backgroundColor!.components
        let colorArr = color
        return colorArr!.reduce(0, +)
    }
}
