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
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerFunction), userInfo: nil, repeats: true)
        
        
        // This block will not show up as Thread.sleep blocks viewDidAppear for 10 seconds.
//        for time in 1...10 {
//            timeLabel.text = "Time: \(counter)"
//            counter += 1
//            print(time)
//            Thread.sleep(forTimeInterval: 1)
//        }
    }
    
    @objc func TimerFunction() {
        counter -= 1
        if counter == 0 {
            print("counter has become ZERO")
            timer.invalidate()
            timeLabel.text = "Time's Over!"
        } else {
        
        timeLabel.text = "Time: \(counter)"
        print(counter)
        }
        
        
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        for time in 1...10 {
//            counter += 1
//            timeLabel.text = "Time: \(counter)"
//            print("Counter: \(counter)")
//            print("Time: \(time)")
//            Thread.sleep(forTimeInterval: 1) // User interface stops updating/ get blocked in realtime because of this.
//        }
//    }


    @IBAction func startButtonClicked(_ sender: UIButton) {
        print("start button clicked")
    }
}

