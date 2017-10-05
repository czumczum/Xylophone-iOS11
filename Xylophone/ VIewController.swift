//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        var numberOfNote = 1
        switch sender.tag {
        case 2:
            numberOfNote = 2
        case 3:
            numberOfNote = 3
        case 4:
            numberOfNote = 4
        case 5:
            numberOfNote = 5
        case 6:
            numberOfNote = 6
        case 7:
            numberOfNote = 7
        default:
            numberOfNote = 1
        }
        let url = Bundle.main.url(forResource: "note\(numberOfNote)", withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            guard let player = player else {return}
            
            player.prepareToPlay()
            player.play()
        }
        catch let error as Error {
            print(error.localizedDescription)
        }

    }

}

