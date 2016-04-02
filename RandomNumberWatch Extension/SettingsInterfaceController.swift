//
//  SettingsInterfaceController.swift
//  RandomNumber
//
//  Created by Dante Solorio on 4/2/16.
//  Copyright © 2016 Dasoga. All rights reserved.
//

import WatchKit
import Foundation


class SettingsInterfaceController: WKInterfaceController {
    
    @IBOutlet var maxNumberLabel: WKInterfaceLabel!
    @IBOutlet var numberControlSlider: WKInterfaceSlider!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let userDefaults = NSUserDefaults.standardUserDefaults()
        let numSaved = userDefaults.integerForKey("maxNumber")
        maxNumberLabel.setText(String(numSaved))
        
        
        

        
        
        switch numSaved {
        case 10:
            numberControlSlider.setValue(0)
            
        case 100:
            numberControlSlider.setValue(1)
            
        case 1000:
            numberControlSlider.setValue(2)
            
        case 10000:
            numberControlSlider.setValue(3)
            
        default:
            break
        }
        


        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func changeMaxValue(value: Float){
        let userDefaults = NSUserDefaults.standardUserDefaults()
        switch value {
        case 0.0:
            maxNumberLabel.setText("10")
            userDefaults.setInteger(10, forKey: "maxNumber")
        case 1.0:
            maxNumberLabel.setText("100")
            userDefaults.setInteger(100, forKey: "maxNumber")
        case 2.0:
            maxNumberLabel.setText("1000")
            userDefaults.setInteger(1000, forKey: "maxNumber")
        case 3.0:
            maxNumberLabel.setText("10000")
            userDefaults.setInteger(10000, forKey: "maxNumber")
        default:
            break
        }
    }

}
