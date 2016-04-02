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
        
        // Configure interface objects here.
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
        switch value {
        case 0.0:
            maxNumberLabel.setText("10")
        case 1.0:
            maxNumberLabel.setText("100")
        case 2.0:
            maxNumberLabel.setText("1000")
        case 3.0:
            maxNumberLabel.setText("10000")
        default:
            break
        }
    }

}
