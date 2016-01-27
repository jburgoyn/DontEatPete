//
//  Audio.swift
//  DontEatPete
//
//  Created by Jonny B on 1/24/16.
//  Copyright © 2016 Jonny B. All rights reserved.
//

import Foundation
import AVFoundation

var musicPlayer:AVAudioPlayer!
var soundfxPlayer:AVAudioPlayer!

func initMusic() {
    
    let path = NSBundle.mainBundle().pathForResource("notPete", ofType: "wav")!
    
    do {
        
        musicPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: path)!)
        musicPlayer.prepareToPlay()
        musicPlayer.volume = 0.1
        
    } catch let err as NSError {
            
            print(err.debugDescription)
        }
}

func initPeteEaten() {
    
    let path = NSBundle.mainBundle().pathForResource("womp", ofType: "mp3")!
    
    do {
        
        soundfxPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: path)!)
        soundfxPlayer.prepareToPlay()
        soundfxPlayer.volume = 0.4
        
    } catch let err as NSError {
        
        print(err.debugDescription)
    }
}

