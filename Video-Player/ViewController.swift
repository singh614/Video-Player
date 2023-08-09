//
//  ViewController.swift
//  Video-Player
//
//  Created by Abhinandan Singh on 09/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func findVideo(){
        guard let path = Bundle.main.path(forResource: "oogway", ofType: "mp4") else { // guard
            debugPrint("oogway.mp4 not found")
            
            return
        }
    }
}

