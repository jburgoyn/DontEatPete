//
//  PeteBtn.swift
//  DontEatPete
//
//  Created by Jonny B on 1/14/16.
//  Copyright © 2016 Jonny B. All rights reserved.
//

import UIKit

class PeteBtn: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 10.0
        
        self.setImage(UIImage(named: "candy1"), forState: .Normal)
        
        self.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        self.tintColor = UIColor .whiteColor()
        
    }
    
}
