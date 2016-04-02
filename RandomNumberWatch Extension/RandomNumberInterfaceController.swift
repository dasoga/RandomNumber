//
//  RandomNumberInterfaceController.swift
//  RandomNumber
//
//  Created by Dante Solorio on 4/2/16.
//  Copyright © 2016 Dasoga. All rights reserved.
//

import WatchKit
import Foundation


class RandomNumberInterfaceController: WKInterfaceController {
    
    @IBOutlet var numberLabel: WKInterfaceLabel!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        getRandomNumber()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func getRandomNumber(){
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var num: Int = 0
        let numSaved: UInt32 = UInt32(userDefaults.integerForKey("maxNumber"))
        if numSaved != 0{
            num = Int(arc4random_uniform(numSaved))
        }else{
            num = Int(arc4random_uniform(10))
        }
        updateLayout(num)
    }
    
    func updateLayout(num:Int){
        numberLabel.setText(String(num))
    }

}
