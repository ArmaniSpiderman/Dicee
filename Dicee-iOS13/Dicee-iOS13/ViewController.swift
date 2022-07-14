//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var rightDiceNumber = 5
    var leftDiceNumber = 1
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    // Image and the imageView are two different things
    //   WHO           WHAT    VALUE
        
        diceImageView1.image = UIImage(named: "DiceTwo")
        diceImageView2.image = UIImage(named: "DiceSix")
        
        // Image View refers to a {Ghost Shell}
        
    }

    @IBAction func RollButtonPressed(_ sender: UIButton)
    {
        /*
         UIIamge refers to "Image Literal"
         UIIamge = Image icon
         "(named:" = Image name
         An Array is alot of the same type of thing insde the [] brackets
         
         Creating a Variable
                    Lable             Data
                      I                I
         "var"       Angela   =    0837589437
            I                 I
         Keyword            Equals
         
         How to Replace a "var" without replaing code
         
         "var a = 5
          var b = 8
         
         solution
         var c = a "c=5"
         a = b "a=8"
         b = c "b=5"
         
         print("a: \(a)")
         print("b: \(b)")
         "
         
         Randomise within limits
         Exmple:
         "Int.random(in:1...10)"
         randomElemet
         "let" = Constant, cannot be changed
         */
        
        
        //diceArray
        let diceArray = [
            UIImage(named: "DiceOne"),
            UIImage(named: "DiceTwo"),
            UIImage(named: "DiceThree"),
            UIImage(named: "DiceFour"),
            UIImage(named: "DiceFive"),
            UIImage(named: "DiceSix")
        ]
        //leftDiceNumber = 1
        //print("leftDiceNumber at beginning = \(leftDiceNumber)")
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        
        leftDiceNumber += 1
        //leftDiceNumber = 2
        //print("leftDiceNumber at the end = \(leftDiceNumber)")
        
        //Test Dice Number Two
        
        //rightDiceNumber = 1
        //print("rightDiceNumber at beginning = \(rightDiceNumber)")
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
          //  making numbers random
        
        rightDiceNumber -= 1
        //rightDiceNumber = 2
        //print("rightDiceNumber at the end = \(rightDiceNumber)")
    }
    
}

