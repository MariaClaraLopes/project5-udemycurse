//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        guard let titleSounds = sender.titleLabel?.text else { return }
        playSound(titleSounds: titleSounds)
    }
    
    func playSound(titleSounds: String) {
        guard let url = Bundle.main.url(forResource: titleSounds, withExtension: "wav") else { return }
        player = try! AVAudioPlayer(contentsOf: url)
        guard let player = player else { return }
        player.play()
    }
    
}

