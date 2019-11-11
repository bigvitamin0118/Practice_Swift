//
//  ViewController.swift
//  speech
//
//  Created by HT-19R1108 on 2019/11/11.
//  Copyright © 2019 HT-19R1108. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func speech(_ sender: Any) {
        let msg = "Hello "
        + "Eight apes ate eight apples "
        + "People pick pink pears "
        + "Peter Piper picked a peck of pickled peppers."
        + "A peck of pickled peppers Peter Piper picked."
        + "If Peter Piper picked a peck of pickled peppers,"
        + "Where’s the peck of pickled peppers Peter Piper picked?"
        + "A big black bug bit a big black bear, but the big black bear bit the big black bug back."
        + "Red lorry, yellow lorry, red lorry, yellow lorry";
        let su = AVSpeechUtterance(string: msg)
        
        let loc = "en-US"
        su.voice = AVSpeechSynthesisVoice(language:loc)
        AVSpeechSynthesizer().speak(su)
    }
    
}

