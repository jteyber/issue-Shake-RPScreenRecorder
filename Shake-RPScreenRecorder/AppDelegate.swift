//
//  AppDelegate.swift
//  Shake-RPScreenRecorder
//
//  Created by Joël TEYBER on 13/05/2023.
//

import UIKit
import Shake

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.startShake()
        
        return true
    }
    
    private func startShake() {
        Shake.configuration.setShowIntroMessage = true
        Shake.configuration.isAutoVideoRecordingEnabled = true
        Shake.configuration.isInvokedByShakeDeviceEvent = true
        Shake.configuration.isInvokedByScreenshot = true
        Shake.registerSessionConfiguration(URLSessionConfiguration.default)
        
        #warning("put your Shake`clientId` and `clientSecret` in AppDelegate")
        Shake.start(clientId: "",
                    clientSecret: "")
    }
}

