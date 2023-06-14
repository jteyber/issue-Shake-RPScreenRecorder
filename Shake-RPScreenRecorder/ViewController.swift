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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.versionLabel.text = "\(ShakeVersionNumber)"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.updateConfLabel()
    }
    
    private func updateConfLabel() {
        
        //MARK: for Shake 15.1.1
/*
        self.confLabel.text = "isPaused: " + (Shake.isPaused ? "on" : "off")
*/
        
        //MARK: for Shake > 16
        
        self.confLabel.text = "isUserFeedbackEnabled: " + (Shake.configuration.isUserFeedbackEnabled ? "on" : "off")
    }
    
    @IBAction func onSwitchValueChanged(_ sender: Any) {
        guard (sender as? UISwitch) == self.confSwitch else {
            return
        }
        
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
        
        self.updateConfLabel()
    }
}
