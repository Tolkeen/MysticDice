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
    var miceDiceOneSelected = false
    var miceDiceCount = 0
    
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
            miceDiceCount--;
            miceDiceOneSelected = false
            miceDiceOne.selected = false
        } else {
            miceDiceCount++;
            miceDiceOneSelected = true
            miceDiceOne.selected = true
        }
    }

}

