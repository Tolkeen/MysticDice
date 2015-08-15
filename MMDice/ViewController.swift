//
//  ViewController.swift
//  MMDice
//
//  Created by Joshua Rodriguez on 8/14/15.
//  Copyright (c) 2015 Joshua Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miceDiceOne: UIButton!
    @IBOutlet weak var miceDiceTwo: UIButton!
    @IBOutlet weak var miceDiceThree: UIButton!
    @IBOutlet weak var miceDiceFour: UIButton!
    @IBOutlet weak var miceDiceFive: UIButton!
    
    @IBOutlet weak var miceDisplayDiceOne: UIButton!
    @IBOutlet weak var miceDisplayDiceTwo: UIButton!
    @IBOutlet weak var miceDisplayDiceThree: UIButton!
    @IBOutlet weak var miceDisplayDiceFour: UIButton!
    @IBOutlet weak var miceDisplayDiceFive: UIButton!
    
    @IBOutlet weak var enemyDiceOne: UIButton!
    @IBOutlet weak var enemyDiceTwo: UIButton!
    @IBOutlet weak var enemyDiceThree: UIButton!
    @IBOutlet weak var enemyDiceFour: UIButton!
    @IBOutlet weak var enemyDiceFive: UIButton!
    
    @IBOutlet weak var enemyDisplayDiceOne: UIButton!
    @IBOutlet weak var enemyDisplayDiceTwo: UIButton!
    @IBOutlet weak var enemyDisplayDiceThree: UIButton!
    @IBOutlet weak var enemyDisplayDiceFour: UIButton!
    @IBOutlet weak var enemyDisplayDiceFive: UIButton!
    
    var miceDiceOneSelected = false
    var miceDiceTwoSelected = false
    var miceDiceThreeSelected = false
    var miceDiceFourSelected = false
    var miceDiceFiveSelected = false
    
    var displays: [String] = ["die_face_1.png", "die_face_2.png", "die_face_3.png", "die_face_4.png", "die_face_5.png", "die_face_6.png"]
    
    var miceDiceCount = 0
    var enemyDiceCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func miceDiceOnePressed(sender: AnyObject) {
        if(miceDiceOne.selected) {
            miceDiceCount--
            miceDiceOneSelected = false
            miceDiceOne.selected = false
        } else {
            miceDiceCount++
            miceDiceOneSelected = true
            miceDiceOne.selected = true
        }
    }

    @IBAction func miceDiceTwoPressed(sender: UIButton) {
        if(miceDiceTwo.selected) {
            miceDiceCount--;
            miceDiceTwoSelected = false
            miceDiceTwo.selected = false
        } else {
            miceDiceCount++
            miceDiceTwoSelected = true
            miceDiceTwo.selected = true
        }
    }
    
    @IBAction func miceDiceThreePressed(sender: UIButton) {
        if(miceDiceThree.selected) {
            miceDiceCount--
            miceDiceThreeSelected = false
            miceDiceThree.selected = false
        } else {
            miceDiceCount++
            miceDiceThreeSelected = true
            miceDiceThree.selected = true
        }
    }
    
    @IBAction func miceDiceFourPressed(sender: UIButton) {
        if(miceDiceFour.selected) {
            miceDiceCount--
            miceDiceFourSelected = false
            miceDiceFour.selected = false
        } else {
            miceDiceCount++
            miceDiceFourSelected = true
            miceDiceFour.selected = true
        }
    }
    
    @IBAction func miceDiceFivePressed(sender: UIButton) {
        if(miceDiceFive.selected) {
            miceDiceCount--
            miceDiceFiveSelected = false
            miceDiceFive.selected = false
        } else {
            miceDiceCount++
            miceDiceFiveSelected = true
            miceDiceFive.selected = true
        }
    }
    
    @IBAction func enemyDiceOnePressed(sender: UIButton) {
        if(enemyDiceOne.selected){
            enemyDiceOne.selected = false
            enemyDiceCount--
        } else {
            enemyDiceOne.selected = true
            enemyDiceCount++
        }
    }
    
    @IBAction func enemyDiceTwoPressed(sender: UIButton) {
        if(enemyDiceTwo.selected) {
            enemyDiceTwo.selected = false
            enemyDiceCount--
        } else {
            enemyDiceTwo.selected = true
            enemyDiceCount++
        }
    }
    
    @IBAction func enemyDiceThreePressed(sender: UIButton) {
        if(enemyDiceThree.selected) {
            enemyDiceThree.selected = false
            enemyDiceCount--
        } else {
            enemyDiceThree.selected = true
            enemyDiceCount++
        }
    }
    
    @IBAction func enemyDiceFourPressed(sender: UIButton) {
        if(enemyDiceFour.selected) {
            enemyDiceFour.selected = false
            enemyDiceCount--
        } else {
            enemyDiceFour.selected = true
            enemyDiceCount++
        }
    }
    
    @IBAction func enemyDiceFivePressed(sender: UIButton) {
        if(enemyDiceFive.selected) {
            enemyDiceFive.selected = false
            enemyDiceCount--
        } else {
            enemyDiceFive.selected = true
            enemyDiceCount++
        }
    }
    
    @IBAction func rollDice(sender: UIButton) {
        if(miceDiceOne.selected) {
            miceDisplayDiceOne.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: miceDisplayDiceOne.state)
            miceDisplayDiceOne.alpha = 1;
        } else {
            miceDisplayDiceOne.alpha = 0;
        }
        
        if(miceDiceTwo.selected) {
            miceDisplayDiceTwo.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: miceDisplayDiceTwo.state)
            miceDisplayDiceTwo.alpha = 1;
        } else {
            miceDisplayDiceTwo.alpha = 0;
        }
        
        if(miceDiceThree.selected) {
            miceDisplayDiceThree.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: miceDisplayDiceThree.state)
            miceDisplayDiceThree.alpha = 1;
        } else {
            miceDisplayDiceThree.alpha = 0;
        }
        
        if(miceDiceFour.selected) {
            miceDisplayDiceFour.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: miceDisplayDiceFour.state)
            miceDisplayDiceFour.alpha = 1;
        } else {
            miceDisplayDiceFour.alpha = 0;
        }
        
        if(miceDiceFive.selected) {
            miceDisplayDiceFive.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: miceDisplayDiceFive.state)
            miceDisplayDiceFive.alpha = 1;
        } else {
            miceDisplayDiceFive.alpha = 0;
        }
        
        if(enemyDiceOne.selected) {
            enemyDisplayDiceOne.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: enemyDisplayDiceOne.state)
            enemyDisplayDiceOne.alpha = 1;
        } else {
            enemyDisplayDiceOne.alpha = 0;
        }
        
        if(enemyDiceTwo.selected) {
            enemyDisplayDiceTwo.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: enemyDisplayDiceTwo.state)
            enemyDisplayDiceTwo.alpha = 1;
        } else {
            enemyDisplayDiceTwo.alpha = 0;
        }
        
        if(enemyDiceThree.selected) {
            enemyDisplayDiceThree.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: enemyDisplayDiceThree.state)
            enemyDisplayDiceThree.alpha = 1;
        } else {
            enemyDisplayDiceThree.alpha = 0;
        }
        
        if(enemyDiceFour.selected) {
            enemyDisplayDiceFour.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: enemyDisplayDiceFour.state)
            enemyDisplayDiceFour.alpha = 1;
        } else {
            enemyDisplayDiceFour.alpha = 0;
        }
        
        if(enemyDiceFive.selected) {
            enemyDisplayDiceFive.setImage(UIImage(named: displays[Int(arc4random_uniform(6))]), forState: enemyDisplayDiceFive.state)
            enemyDisplayDiceFive.alpha = 1;
        } else {
            enemyDisplayDiceFive.alpha = 0;
        }
        
    }
    
}

