//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Garrett Gilley on 1/26/19.
//  Copyright © 2019 Garrett Gilley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //8ball-Array
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0

    
    
    //8ball-Container
    @IBOutlet weak var imageView: UIImageView!
    //Button
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray [randomBallNumber])
    }


    //action-method
    func newBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray [randomBallNumber])
    }
    
    
}

