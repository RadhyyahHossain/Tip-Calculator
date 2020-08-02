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

        /* Do any additional setup after loading the view.
        cardview.layer.shadowColor = UIColor.black.cgColor
        cardview.layer.shadowOpacity = 0.2
        cardview.layer.shadowOffset = .zero
        cardview.layer.shadowRadius = 10
        cardview.layer.shadowPath = UIBezierPath(rect: cardview.bounds).cgPath
        cardview.layer.shouldRasterize = true
        cardview.layer.cornerRadius = 10;
        //cardview.layer.masksToBounds = true;*/

        
        
    }
    
    
    @IBOutlet weak var switchTest: UISwitch!
    
    
    @IBAction func saveSwitchPressed(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "switchState")
    }
    

    @IBAction func switchDidChange(_ sender: UISwitch) {
        if sender.isOn{
            UIApplication.shared.windows.forEach { window in
                window.overrideUserInterfaceStyle = .light
            }
        } else {
            UIApplication.shared.windows.forEach { window in
                window.overrideUserInterfaceStyle = .dark
            }

        }
    }
    
    
    
    
    

}
