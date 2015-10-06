//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Rahul Nair Jaishakar on 10/2/15.
//  Copyright © 2015 RNJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Guess: UITextField!
    @IBOutlet var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func button(sender: AnyObject) {
        
        let userGuess:Int = Int(Guess.text!)!
        
        let noOfFingers:Int = Int(arc4random_uniform(6))
        print(noOfFingers)
        
        if( userGuess == noOfFingers )
        {
            output.text = "You've guessed right! Guess again!"
        }
        else
        {
            output.text = "Wrong! It was \(noOfFingers). Guess again!"
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

