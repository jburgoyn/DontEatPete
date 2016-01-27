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
    @IBOutlet weak var soundBtn: UIButton!
    
    var peteSent = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playAgainBtn.layer.cornerRadius = 5
        modalGameOver.layer.cornerRadius = 15
        modalGameOver.clipsToBounds = true
        
        if musicPlayer.volume > 0 && soundfxPlayer.volume > 0 {
            
            soundBtn.alpha = 1
            
        } else {
            
            soundBtn.alpha = 0.2
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        if musicPlayer.volume > 0 && soundfxPlayer.volume > 0 {
            
            soundBtn.alpha = 1
            
        } else {
        
            soundBtn.alpha = 0.2
        }
    }
    
    @IBAction func playAgainBtnPressed(sender: UIButton) {
        
        dismissViewControllerAnimated(false, completion: nil)
    }
    
    @IBAction func eatPete(sender: PeteBtn) {
        
        
        if sender.tag != peteSent {
            
            sender.backgroundColor = .grayColor()
            sender.enabled = false
            musicPlayer.play()
       
        } else {
            
            peteSent = 0
            
            soundfxPlayer.play()
           
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
    

    
    @IBAction func soundBtnPressed(sender: AnyObject) {
        
        if musicPlayer.volume > 0 && soundfxPlayer.volume > 0 {
            
            musicPlayer.volume = 0
            soundfxPlayer.volume = 0
            
            soundBtn.alpha = 0.2
            
        } else {
            
            musicPlayer.volume = 0.1
            soundfxPlayer.volume = 0.4
            soundBtn.alpha = 1.0
        }
    }
    
    
    
}
