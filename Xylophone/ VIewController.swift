//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundNameArray = ["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        var selectedSoundName : String = soundNameArray[sender.tag-1]
        playSound(selectedSound: selectedSoundName)
        
    }
    func playSound (selectedSound : String){
        
        let url = Bundle.main.url(forResource: selectedSound, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        }catch {
            print(error)
        }
        audioPlayer.play()
        
    }
    
  

}

