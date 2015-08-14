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
    
    @IBOutlet weak var enemyDiceOne: UIButton!
    @IBOutlet weak var enemyDiceTwo: UIButton!
    @IBOutlet weak var enemyDiceThree: UIButton!
    @IBOutlet weak var enemyDiceFour: UIButton!
    @IBOutlet weak var enemyDiceFive: UIButton!
    
    
    var miceDiceOneSelected = false
    var miceDiceTwoSelected = false
    var miceDiceThreeSelected = false
    var miceDiceFourSelected = false
    var miceDiceFiveSelected = false
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
        if(miceDiceOneSelected) {
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
        if(miceDiceTwoSelected) {
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
        if(miceDiceThreeSelected) {
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
        if(miceDiceFourSelected) {
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
        if(miceDiceFiveSelected) {
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
    
}

