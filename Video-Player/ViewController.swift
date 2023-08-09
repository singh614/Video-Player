//
//  ViewController.swift
//  Video-Player
//
//  Created by Abhinandan Singh on 09/08/23.
//

import UIKit
import AVKit // interface for media player
import AVFoundation // controls like.. device camera, audio...

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "oogway", ofType: "mp4") else { // guard
            debugPrint("oogway.mp4 not found")
            
            return
        }
        let player = AVPlayer(url:
                                URL(fileURLWithPath: path))
        let playerController =
        AVPlayerViewController()
        
        playerController.player=player
        present(playerController, animated: true){
            player.play()
        }
    }
}
