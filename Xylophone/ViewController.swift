//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender.currentTitle)
        let p : String = sender.currentTitle!
        print(p)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 ) {
            sender.alpha = 1.0
        }
        playSound(x: p)
    }
    
    
    func playSound(x: String) {
        let url = Bundle.main.url(forResource: x, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
 
    
    
    
}
