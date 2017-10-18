//
//  ViewController.swift
//  Piano
//
//  Created by Adriat Ahmeti on 10/16/17.
//  Copyright © 2017 Adriat Ahmeti. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    var notat = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nota1(_ sender: UIButton) {
        var nota = sender.tag
        var file = Bundle.main.url(forResource: notat[nota - 1], withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: file!)
        audioPlayer.play()
    }

}

