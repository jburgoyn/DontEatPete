//
//  ViewController.swift
//  DontEatPete
//
//  Created by Jonny B on 1/14/16.
//  Copyright © 2016 Jonny B. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    
    // Info Screen Outlets
    @IBOutlet weak var instructionsView: UIView!
    
    // Variables
    var pete = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    
    @IBAction func infoBtnPressed(sender: UIButton) {
        
        performSegueWithIdentifier("toInstructionsView", sender: self)
        
    }
    @IBAction func peteBtnPressed(sender: PeteBtn) {
        let dispatchTime: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(2.0 * Double(NSEC_PER_SEC)))
        
        sender.backgroundColor = .grayColor()
        sender.setImage(nil, forState: .Normal)
        
        pete = sender.tag
        sender.setTitle("I'm Pete!", forState: .Normal)
        
        btn1.enabled = false
        btn2.enabled = false
        btn3.enabled = false
        btn4.enabled = false
        btn5.enabled = false
        btn6.enabled = false
        btn7.enabled = false
        btn8.enabled = false
        btn9.enabled = false
        btn10.enabled = false
        btn11.enabled = false
        btn12.enabled = false
        btn13.enabled = false
        btn14.enabled = false
        btn15.enabled = false
                
        dispatch_after(dispatchTime, dispatch_get_main_queue(), {
            self.performSegueWithIdentifier("game", sender: self.pete)
        })
    }
    
    

    @IBAction func instructionsBtnPressed(sender: UIButton) {
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // this is the function to prepare for a segue.
        if segue.identifier == "game" {
            
            // get the destination view controller ready
            if let gameVC = segue.destinationViewController as? GameViewController {
                
                // tell the destination VC what the sender is going to be typed as
                if let pete = sender as? Int {
                    
                    // Declaring what the actual variable in the destination VC is equal to from the origin VC.
                    gameVC.peteSent = pete
                    
                }
            }
        }
    }
}

