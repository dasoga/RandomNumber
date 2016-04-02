//
//  ViewController.swift
//  RandomNumber
//
//  Created by Dante Solorio on 3/31/16.
//  Copyright © 2016 Dasoga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getRandomNumber(sender:UIButton){
        let number = Int(arc4random_uniform(1000))
        updateLayoutInfo(number)
    }
    
    func updateLayoutInfo(number:Int){
        numberLabel.text = String(number)
    }

}

