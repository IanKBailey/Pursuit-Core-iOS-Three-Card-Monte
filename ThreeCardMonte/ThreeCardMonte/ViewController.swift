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
    
    var buttons: [UIButton] = []
    
    let cardImages = [UIImage(named: "threeCard")!,UIImage(named: "threeCard")!, UIImage(named: "kingCard")!]
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    buttons = [card0, card1, card2]
  }

    @IBAction func flipCard(_ sender: UIButton) {
        let randomImage = cardImages.randomElement() ?? UIImage(named: "threeCard")!
                
        var tags = Array(0...2) // 2
        tags.append(sender.tag)
        
        if randomImage == UIImage(named: "kingCard")! {
            sender.setImage(UIImage(named: "kingCard"), for: .normal)
            gameStateLabel.text = "You win"
            disable()
        } else {
            sender.setImage(UIImage(named: "threeCard"), for:  .normal)
            gameStateLabel.text = "You Lose"
            for tag in tags {
                if sender.tag != tag {
                    let button = buttons[tag]
                    button.setImage(UIImage(named: "kingCard"), for: .normal)
                    break
                }
            }
            
            disable()
        }
        
    }
    func disable() {
        card0.isEnabled = false
        card1.isEnabled = false
        card2.isEnabled = false
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        let buttonArray = [card0, card1, card2]
        for button in buttonArray {
            button?.setImage(UIImage(named: "cardBackRed"), for: .normal)
            button?.isEnabled = true
        }
    
    }
    
    
    
    
    
    
    
}

