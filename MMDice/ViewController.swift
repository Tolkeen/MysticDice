//
//  ViewController.swift
//  MMDice
//
//  Created by Joshua Rodriguez on 8/14/15.
//  Copyright (c) 2015 Joshua Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miceHitsLabel: UILabel!
    @IBOutlet weak var enemyHitsLabel: UILabel!
    @IBOutlet weak var miceRangedLabel: UILabel!
    @IBOutlet weak var enemyRangedLabel: UILabel!
    @IBOutlet weak var enemyShieldLabel: UILabel!
    @IBOutlet weak var miceShieldLabel: UILabel!
    @IBOutlet weak var miceCheeseLabel: UILabel!
    @IBOutlet weak var enemyCheeseLabel: UILabel!
    
    
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
    
    var displays: [String] = ["side1.png", "side2.png", "side3.png", "side4.png", "side5.png", "side6.png"]
    
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
        var miceMeleeHits = 0
        var miceRangedHits = 0
        var miceShields = 0
        var miceCheeseCount = 0
        var miceValOne = 0
        var miceValTwo = 0
        var miceValThree = 0
        var miceValFour = 0
        var miceValFive = 0
        
        var enemyMeleeHits = 0
        var enemyRangedHits = 0
        var enemyShields = 0
        var enemyCheeseCount = 0
        var enemyValOne = 0
        var enemyValTwo = 0
        var enemyValThree = 0
        var enemyValFour = 0
        var enemyValFive = 0
        
        if(miceDiceOne.selected) {
            miceValOne = Int(arc4random_uniform(6))
            miceDisplayDiceOne.setImage(UIImage(named: displays[miceValOne]), forState: miceDisplayDiceOne.state)
            miceDisplayDiceOne.alpha = 1;
            
            if(miceValOne == 1 || miceValOne == 2 || miceValOne == 4) {
                miceMeleeHits++
            }
            if(miceValOne == 3 || miceValOne == 5) {
                miceRangedHits++
            }
            if(miceValOne == 2 || miceValOne == 4) {
                miceShields++
            }
            if(miceValOne == 0) {
                miceCheeseCount++
            }
            
        } else {
            miceDisplayDiceOne.alpha = 0;
        }
        
        if(miceDiceTwo.selected) {
            miceValTwo = Int(arc4random_uniform(6))
            miceDisplayDiceTwo.setImage(UIImage(named: displays[miceValTwo]), forState: miceDisplayDiceTwo.state)
            miceDisplayDiceTwo.alpha = 1;
            
            if(miceValTwo == 1 || miceValTwo == 2 || miceValTwo == 4) {
                miceMeleeHits++
            }
            if(miceValTwo == 3 || miceValTwo == 5) {
                miceRangedHits++
            }
            if(miceValTwo == 2 || miceValTwo == 4) {
                miceShields++
            }
            if(miceValTwo == 0) {
                miceCheeseCount++
            }
            
        } else {
            miceDisplayDiceTwo.alpha = 0;
        }
        
        if(miceDiceThree.selected) {
            miceValThree = Int(arc4random_uniform(6))
            miceDisplayDiceThree.setImage(UIImage(named: displays[miceValThree]), forState: miceDisplayDiceThree.state)
            miceDisplayDiceThree.alpha = 1;
            
            if(miceValThree == 1 || miceValThree == 2 || miceValThree == 4) {
                miceMeleeHits++
            }
            if(miceValThree == 3 || miceValThree == 5) {
                miceRangedHits++
            }
            if(miceValThree == 2 || miceValThree == 4) {
                miceShields++
            }
            if(miceValThree == 0) {
                miceCheeseCount++
            }
            
        } else {
            miceDisplayDiceThree.alpha = 0;
        }
        
        if(miceDiceFour.selected) {
            miceValFour = Int(arc4random_uniform(6))
            miceDisplayDiceFour.setImage(UIImage(named: displays[miceValFour]), forState: miceDisplayDiceFour.state)
            miceDisplayDiceFour.alpha = 1;
            
            if(miceValFour == 1 || miceValFour == 2 || miceValFour == 4) {
                miceMeleeHits++
            }
            if(miceValFour == 3 || miceValFour == 5) {
                miceRangedHits++
            }
            if(miceValFour == 2 || miceValFour == 4) {
                miceShields++
            }
            if(miceValFour == 0) {
                miceCheeseCount++
            }
            
        } else {
            miceDisplayDiceFour.alpha = 0;
        }
        
        if(miceDiceFive.selected) {
            miceValFive = Int(arc4random_uniform(6))
            miceDisplayDiceFive.setImage(UIImage(named: displays[miceValFive]), forState: miceDisplayDiceFive.state)
            miceDisplayDiceFive.alpha = 1;
            
            if(miceValFive == 1 || miceValFive == 2 || miceValFive == 4) {
                miceMeleeHits++
            }
            if(miceValFive == 3 || miceValFive == 5) {
                miceRangedHits++
            }
            if(miceValFive == 2 || miceValFive == 4) {
                miceShields++
            }
            if(miceValFive == 0) {
                miceCheeseCount++
            }
            
        } else {
            miceDisplayDiceFive.alpha = 0;
        }
        
        if(enemyDiceOne.selected) {
            enemyValOne = Int(arc4random_uniform(6))
            enemyDisplayDiceOne.setImage(UIImage(named: displays[enemyValOne]), forState: enemyDisplayDiceOne.state)
            enemyDisplayDiceOne.alpha = 1;
            
            if(enemyValOne == 1 || enemyValOne == 2 || enemyValOne == 4) {
                enemyMeleeHits++
            }
            if(enemyValOne == 3 || enemyValOne == 5) {
                enemyRangedHits++
            }
            if(enemyValOne == 2 || enemyValOne == 4) {
                enemyShields++
            }
            if(enemyValOne == 0) {
                enemyCheeseCount++
            }
            
        } else {
            enemyDisplayDiceOne.alpha = 0;
        }
        
        if(enemyDiceTwo.selected) {
            enemyValTwo = Int(arc4random_uniform(6))
            enemyDisplayDiceTwo.setImage(UIImage(named: displays[enemyValTwo]), forState: enemyDisplayDiceTwo.state)
            enemyDisplayDiceTwo.alpha = 1;
            
            if(enemyValTwo == 1 || enemyValTwo == 2 || enemyValTwo == 4) {
                enemyMeleeHits++
            }
            if(enemyValTwo == 3 || enemyValTwo == 5) {
                enemyRangedHits++
            }
            if(enemyValTwo == 2 || enemyValTwo == 4) {
                enemyShields++
            }
            if(enemyValTwo == 0) {
                enemyCheeseCount++
            }
            
        } else {
            enemyDisplayDiceTwo.alpha = 0;
        }
        
        if(enemyDiceThree.selected) {
            enemyValThree = Int(arc4random_uniform(6))
            enemyDisplayDiceThree.setImage(UIImage(named: displays[enemyValThree]), forState: enemyDisplayDiceThree.state)
            enemyDisplayDiceThree.alpha = 1;
            
            if(enemyValThree == 1 || enemyValThree == 2 || enemyValThree == 4) {
                enemyMeleeHits++
            }
            if(enemyValThree == 3 || enemyValThree == 5) {
                enemyRangedHits++
            }
            if(enemyValThree == 2 || enemyValThree == 4) {
                enemyShields++
            }
            if(enemyValThree == 0) {
                enemyCheeseCount++
            }
            
        } else {
            enemyDisplayDiceThree.alpha = 0;
        }
        
        if(enemyDiceFour.selected) {
            enemyValFour = Int(arc4random_uniform(6))
            enemyDisplayDiceFour.setImage(UIImage(named: displays[enemyValFour]), forState: enemyDisplayDiceFour.state)
            enemyDisplayDiceFour.alpha = 1;
            
            if(enemyValFour == 1 || enemyValFour == 2 || enemyValFour == 4) {
                enemyMeleeHits++
            }
            if(enemyValFour == 3 || enemyValFour == 5) {
                enemyRangedHits++
            }
            if(enemyValFour == 2 || enemyValFour == 4) {
                enemyShields++
            }
            if(enemyValFour == 0) {
                enemyCheeseCount++
            }
            
        } else {
            enemyDisplayDiceFour.alpha = 0;
        }
        
        if(enemyDiceFive.selected) {
            enemyValFive = Int(arc4random_uniform(6))
            enemyDisplayDiceFive.setImage(UIImage(named: displays[enemyValFive]), forState: enemyDisplayDiceFive.state)
            enemyDisplayDiceFive.alpha = 1;
            
            if(enemyValFive == 1 || enemyValFive == 2 || enemyValFive == 4) {
                enemyMeleeHits++
            }
            if(enemyValFive == 3 || enemyValFive == 5) {
                enemyRangedHits++
            }
            if(enemyValFive == 2 || enemyValFive == 4) {
                enemyShields++
            }
            if(enemyValFive == 0) {
                enemyCheeseCount++
            }
            
        } else {
            enemyDisplayDiceFive.alpha = 0;
        }
        
        var miceMelee = String(miceMeleeHits) + " melee"
        var enemyMelee = String(enemyMeleeHits) + " melee"
        var miceRanged = String(miceRangedHits) + " ranged"
        var enemyRanged = String(enemyRangedHits) + " ranged"
        var miceDefense = String(miceShields) + " defense"
        var enemyDefense = String(enemyShields) + " defense"
        var miceCheese = String(miceCheeseCount) + " cheese"
        var enemyCheese = String(enemyCheeseCount) + " cheese"
        enemyHitsLabel.text = enemyMelee
        enemyHitsLabel.textAlignment = NSTextAlignment.Right
        miceHitsLabel.text = miceMelee
        enemyRangedLabel.text = enemyRanged
        enemyRangedLabel.textAlignment = NSTextAlignment.Right
        miceRangedLabel.text = miceRanged
        enemyShieldLabel.text = enemyDefense
        enemyShieldLabel.textAlignment = NSTextAlignment.Right
        miceShieldLabel.text = miceDefense
        enemyCheeseLabel.text = enemyCheese
        enemyCheeseLabel.textAlignment = NSTextAlignment.Right
        miceCheeseLabel.text = miceCheese
        
    }
    
}

