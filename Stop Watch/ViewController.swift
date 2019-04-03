//
//  ViewController.swift
//  Stop Watch
//
//  Created by D7702_09 on 2019. 4. 3..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var myTimer = Timer()
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLabel.text = String(count)
        
    }

    @IBAction func startBtn(_ sender: Any) {
        if !myTimer.isValid {
        
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo:nil , repeats: true)
            
            print("start Button = \(myTimer.isValid)")
        }
    }
    
    @IBAction func pauseBtn(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @IBAction func stopBtn(_ sender: Any) {
        myTimer.invalidate()
        count = 0
        timeLabel.text = String(count)
    }
    
    @objc func updateTime(){
        count += 1
        timeLabel.text = String(count)
    }
    
}

