//
//  ViewController.swift
//  AudioPlayer
//
//  Created by cagdas on 8.12.2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do
        {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            //ERROR
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPlay(_ sender: Any) {
        player.play()
    }
    
    @IBAction func btnPause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func btnReplay(_ sender: Any) {
        player.currentTime = 0
    }
    
    
}

