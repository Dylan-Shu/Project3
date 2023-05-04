//
//  ViewController.swift
//  MyMemoryGame
//
//  Created by Dylan Shu on 4/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    var MemoryGame: MemoryGameModel = MemoryGameModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var lblMovesMade: UILabel!
    
    @IBOutlet weak var lblMovesLeft: UILabel!
    
    @IBAction func btnClick(_ sender: UIButton) {
    
        var newLabel: String
        var image: UIImage
        
        if let movesString = lblMovesMade.text {
            var movesMade = Int(movesString)!
            movesMade = movesMade + 1
            lblMovesMade.text = String(movesMade)
        }
        
        if let label = sender.titleLabel!.text {
            newLabel = label
        }
        else {
            newLabel = ""
        }
        
        if newLabel != "" {
            image = (UIImage(named: "Image.jpeg") as UIImage?)!
            newLabel = ""
        }
        else {
            image = UIImage()
            newLabel = MemoryGame.emojiArray.randomElement() ?? "-"
        }
        
        sender.setTitle(newLabel, for: UIControl.State.normal)
        
        sender.setBackgroundImage(image, for: UIControl.State.normal)
    }
    
    
}

