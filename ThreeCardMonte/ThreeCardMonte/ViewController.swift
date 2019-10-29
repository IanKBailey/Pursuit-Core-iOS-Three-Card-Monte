//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var card0: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var gameStateLabel: UILabel!
    
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func flipCard(_ sender: UIButton) {
        let range = 0...2
        let randomRange = range.randomElement()
        
        if sender.tag == randomRange {
            sender.setImage(UIImage.init(named: "kingCard"), for: .normal)
            gameStateLabel.text = "You win"
            disable()
        } else  {
            sender.setImage(UIImage.init(named: "threeCard"), for:  .normal)
            gameStateLabel.text = "You Lose"
            disable()
        }
        
    }
    func disable() {
        card0.isEnabled = false
        card1.isEnabled = false
        card2.isEnabled = false
    }
    
}

