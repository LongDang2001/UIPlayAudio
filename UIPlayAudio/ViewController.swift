//
//  ViewController.swift
//  UIPlayAudio
//
//  Created by admin on 4/15/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let path = Bundle.main.path(forResource: "Somethingjust.mp3", ofType: nil) else { return
            
        }
        guard let url = URL(string: path) else { return
            
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            
        } catch {
            
        }
    }
    @IBAction func btPlay(_ sender: Any) {
        player.play()
    }
    @IBAction func btPause(_ sender: Any) {
        player.pause()
    }
    @IBAction func btStop(_ sender: Any) {
        player.stop()
    }
    
}

