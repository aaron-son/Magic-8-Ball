//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Aaron Son on 3/9/18.
//  Copyright © 2018 Aaron Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallIndex: Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4",
                     "ball5"]

    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateMagicBallImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateMagicBallImages()
    }
    
    func updateMagicBallImages () {
        randomBallIndex = Int(arc4random_uniform(5))
        
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateMagicBallImages()
    }


}

