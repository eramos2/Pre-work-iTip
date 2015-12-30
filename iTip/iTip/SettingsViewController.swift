//
//  SettingsViewController.swift
//  iTip
//
//  Created by Emmanuel Ramos on 12/29/15.
//  Copyright © 2015 Emmanuel Ramos. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultPercentageControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = NSUserDefaults.standardUserDefaults()
        defaultPercentageControl.selectedSegmentIndex = defaults.integerForKey("default_tip_percentage")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onChange(sender: AnyObject) {
        let tipPercentage = defaultPercentageControl.selectedSegmentIndex
        
        let defaultPercentage = NSUserDefaults.standardUserDefaults()
        defaultPercentage.setInteger(tipPercentage, forKey: "default_tip_percentage")
            defaultPercentage.synchronize()
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
