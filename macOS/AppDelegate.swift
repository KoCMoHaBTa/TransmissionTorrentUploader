//
//  AppDelegate.swift
//  macOS
//
//  Created by Milen Halachev on 6.11.17.
//  Copyright © 2017 KoCMoHaBTa. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindow: NSWindow?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        self.mainWindow = NSApplication.shared.mainWindow
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        
        if flag == false {
            
            self.mainWindow?.makeKeyAndOrderFront(self)
        }
        
        return true
    }
    
    func application(_ sender: NSApplication, openFile filename: String) -> Bool {
        
        let addTorrent = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "AddTorrentViewController") as! AddTorrentViewController
        
        NSWindow(contentViewController: addTorrent).makeKeyAndOrderFront(sender)
        return true
    }
}

