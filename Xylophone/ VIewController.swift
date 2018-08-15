//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundsArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(pressedNote: "\(soundsArray[sender.tag-1])") // JUST TO USE THE TAGS
    }
    
    func playSound(pressedNote: String){
        
        let soundURL = Bundle.main.url(forResource: pressedNote, withExtension: "wav")
        print(pressedNote)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch{
            print(error)
        }
        audioPlayer.play()    }
    
  

}

