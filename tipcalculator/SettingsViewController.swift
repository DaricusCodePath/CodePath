//
//  SettingsViewController.swift
//  tipcalculator
//
//  Created by DrDunkan on 12/13/15.
//  Copyright © 2015 Daricus. All rights reserved.
//

import UIKit
import Foundation

class SettingsViewController: UIViewController {

    @IBOutlet weak var SetControl: UISegmentedControl!
    
   let shareDefaults = NSUserDefaults()
    
    @IBAction func ChangeDefaultTip(sender: AnyObject) {
        
        shareDefaults.setInteger(SetControl.selectedSegmentIndex, forKey: "defaultTipIndex")
        shareDefaults.synchronize()
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        SetControl.selectedSegmentIndex = shareDefaults.integerForKey("defaultTipIndex")
    }}
