//
//  ViewController.swift
//  TimerProject
//
//  Created by Ashish Sharma on 12/22/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for time in 1...10 {
//            timeLabel.text = "Time: \(counter)"
//            counter += 1
//            print(time)
//            Thread.sleep(forTimeInterval: 1)
//        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        for time in 1...10 {
            counter += 1
            timeLabel.text = "Time: \(counter)"
            print("Counter: \(counter)")
            print("Time: \(time)")
            Thread.sleep(forTimeInterval: 1) // User interface stops updating/ get blocked in realtime because of this.
        }
    }


    @IBAction func startButtonClicked(_ sender: UIButton) {
        print("start button clicked")
    }
}

