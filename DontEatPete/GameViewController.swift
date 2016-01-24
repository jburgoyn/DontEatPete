//
//  GameViewController.swift
//  DontEatPete
//
//  Created by Jonny B on 1/14/16.
//  Copyright © 2016 Jonny B. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var modalGameOver: UIView!
    @IBOutlet weak var gameOverLbl: UILabel!
    @IBOutlet weak var playAgainBtn: UIButton!
    
    var peteSent = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playAgainBtn.layer.cornerRadius = 5
        modalGameOver.layer.cornerRadius = 15
        modalGameOver.clipsToBounds = true
        
    }

    
    @IBAction func eatPete(sender: PeteBtn) {
        
        
        if sender.tag != peteSent {
            
            sender.backgroundColor = .grayColor()
            sender.enabled = false
       
        } else {
            
            peteSent = 0
           
            for var i = 0; i < 16; i++ {
                
                if let button = view.viewWithTag(i) as? PeteBtn {
                    
                    button.enabled = false
                    
                }
            }
            
            sender.setImage(UIImage(named: "launch"), forState: .Normal)
            sender.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
            sender.tintColor = UIColor .whiteColor()
            
            sender.backgroundColor = .grayColor()
            
            modalGameOver.hidden = false
            gameOverLbl.hidden = false
            playAgainBtn.hidden = false
      
        }
    }
}
