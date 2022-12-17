//
//  ViewController.swift
//  TriviaGameFinal
//
//  Created by Noor EL-Hawwat on 12/17/22.
//

import UIKit
import AVFoundation

class IntroductionViewController: UIViewController {
    
    var backGroundPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    //Music stuff
    //Work in Progress
    func playBackGroundMusic (fileNamed: String){
        let url = Bundle.main.url(forResource: fileNamed, withExtension: nil)
        guard let newURL = url else {
            print("Could not find file called \(fileNamed)")
                return
            }
            do {
                backGroundPlayer = try AVAudioPlayer(contentsOf: newURL)
                backGroundPlayer.numberOfLoops = -1
                backGroundPlayer.prepareToPlay()
                backGroundPlayer.play()
            }
            catch let error as NSError {
                print(error.description)
        }
        //playBackGroundMusic(fileNamed: "lofi-study-112191.mp3")
    }
    
    


}
