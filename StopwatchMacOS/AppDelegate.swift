//
//  AppDelegate.swift
//  StopwatchMacOS
//
//  Created by Anthony on 1/28/17.
//  Copyright © 2017 Anthony Attard. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var window:NSWindow!
    
    
    func windowDidLoad() {
        window.level = Int(CGWindowLevelForKey(.floatingWindow))
        window.level = Int(CGWindowLevelForKey(.maximumWindow))
    }


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application

    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

