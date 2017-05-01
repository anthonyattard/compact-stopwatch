//
//  ViewController.swift
//  CompactStopwatch
//
//  Created by Anthony on 1/28/17.
//  Copyright © 2017 Anthony Attard. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var count = 0
    var hour = 0
    
    var timer = Timer()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    


    @IBAction func startPressed(_ sender: NSButton) {
        timer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
    }
    
    func counter() {
        count += 1
        if count < 9 {
            counterLabel.stringValue = "\(count)" + " min"
        }
        if count > 9 && count < 60 {
            counterLabel.stringValue = "\(count)" + " min"
        }
        if count >= 60 {
            hour = (count-(count%60))/60
            counterLabel.stringValue = "\(hour)" + " hr " + "\(count%60)" + " min"
        }
        
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        timer.invalidate()
        
        count = 0
        
        counterLabel.stringValue = "0 min"
    }
    @IBAction func pausePressed(_ sender: NSButton) {
        timer.invalidate()
    }

    @IBOutlet weak var counterLabel: NSTextField!
}
