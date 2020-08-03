//
//  SettingsViewController.swift
//  tip_calculator
//
//  Created by Abdullah Ridwan on 8/1/20.
//  Copyright © 2020 Abdullah Ridwan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var cardview: UIView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchTest.isOn =  UserDefaults.standard.bool(forKey: "switchState")

        
        
    }
    
    
    @IBOutlet weak var switchTest: UISwitch!
    
    
    @IBAction func saveSwitchPressed(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "switchState")
    }
    

    @IBAction func switchDidChange(_ sender: UISwitch) {
        if sender.isOn{
            UIApplication.shared.windows.forEach { window in
                window.overrideUserInterfaceStyle = .dark
            }
        } else {
            UIApplication.shared.windows.forEach { window in
                window.overrideUserInterfaceStyle = .light
            }

        }
    }
    
    
    
    
    

}
