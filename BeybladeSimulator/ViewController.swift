//
//  ViewController.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diskTextBox: UITextField!
    @IBOutlet weak var weightTextBox: UITextField!
    @IBOutlet weak var driverTextBox: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LotteryBayblade(_ sender: Any) {
        let bay = Bayblade()
        diskTextBox.text = bay.base?.name
        var weightText = bay.weight?.name
        if ((bay.weight?.isCore) == true) {
            weightText =  weightText! + " + " + bay.frame!.name
        }
        weightTextBox.text = weightText
        driverTextBox.text = bay.driver?.name
    }
    
}

