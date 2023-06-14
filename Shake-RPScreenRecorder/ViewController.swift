//
//  ViewController.swift
//  Shake-RPScreenRecorder
//
//  Created by Joël TEYBER on 13/05/2023.
//

import UIKit
import Shake

class ViewController: UIViewController {

    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var confLabel: UILabel!
    @IBOutlet weak var confSwitch: UISwitch!
    @IBOutlet weak var floatingReportButtonShownLabel: UILabel!
    @IBOutlet weak var floatingReportButtonShownSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.versionLabel.text = "\(ShakeVersionNumber)"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.updateConfLabels()
        self.updateSwitch()
    }
    
    private func updateSwitch() {
        self.confSwitch.setOn(Shake.configuration.isUserFeedbackEnabled, animated: true)
        self.floatingReportButtonShownSwitch.setOn(Shake.configuration.isFloatingReportButtonShown, animated: true)
    }
    
    private func updateConfLabels() {
        
        //MARK: for Shake 15.1.1
/*
        self.confLabel.text = "isPaused: " + (Shake.isPaused ? "on" : "off")
*/
        
        //MARK: for Shake > 16
        
        self.confLabel.text = "isUserFeedbackEnabled: " + (Shake.configuration.isUserFeedbackEnabled ? "on" : "off")
        self.floatingReportButtonShownLabel.text = "isFloatingReportButtonShown: " + (Shake.configuration.isFloatingReportButtonShown ? "on" : "off")
        
    }
    
    @IBAction func onSwitchValueChanged(_ sender: Any) {
        //
        // known limitation :
        // Shake internally uses the native RPScreenRecorder library
        // which automatically disables the screen rotation of the main application UIWindow object.
        //
        
        //MARK: for Shake 15.1.1
/*
        Shake.isPaused = self.confSwitch.isOn
*/
        
        //MARK: for Shake > 16
        Shake.configuration.isUserFeedbackEnabled = self.confSwitch.isOn
        Shake.configuration.isFloatingReportButtonShown = self.floatingReportButtonShownSwitch.isOn
        
        self.updateConfLabels()
    }
}
