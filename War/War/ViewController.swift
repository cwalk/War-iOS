//
//  ViewController.swift
//  War
//
//  Created by Clayton Walker on 8/10/15.
//  Copyright (c) 2015 Clayton Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        //Randomize a number for the first imageview
        var firstRandomNumber = arc4random_uniform(13) + 1
        
        //Construct a string with the random number
        var firstCardString:String = String(format: "card%i", firstRandomNumber)
        
        //Set the first card image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        //Randomize a number for the second imageview
        var secondRandomNumber = arc4random_uniform(13) + 1
        
        //Construc a string with the random number
        var secondCardString:String = String(format: "card%i", secondRandomNumber)
        
        //Set the second card image view to the asset corresponding to the randomized number
        self.secondCardImageView.image = UIImage(named: secondCardString)
    }
    
}

