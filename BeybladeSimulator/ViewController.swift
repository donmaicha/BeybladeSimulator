//
//  ViewController.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerTextBox: UITextField!
    @IBOutlet weak var diskTextBox: UITextField!
    @IBOutlet weak var driverTextBox: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LotteryBayblade(_ sender: Any) {
        let bay = Bayblade()
        layerTextBox.text = bay.layer?.name
        var weightText = bay.disk?.name
        if ((bay.disk?.isCore) == true) {
            weightText =  weightText! + " + " + bay.frame!.name
        }
        diskTextBox.text = weightText
        driverTextBox.text = bay.driver?.name
    }
    @IBAction func LotteryLayerOnly(_ sender: Any) {
        let bay = Bayblade()
        layerTextBox.text = bay.layer?.name
        var weightText = bay.disk?.name
        if ((bay.disk?.isCore) == true) {
            weightText =  weightText! + " + " + bay.frame!.name
        }
    }
    @IBAction func LotteryDiskOnly(_ sender: Any) {
        let bay = Bayblade()
        var diskText = bay.disk?.name
        if ((bay.disk?.isCore) == true) {
            diskText =  diskText! + " + " + bay.frame!.name
        }
        diskTextBox.text = diskText
    }
    @IBAction func LotteryDriverOnly(_ sender: Any) {
        let bay = Bayblade()
        driverTextBox.text = bay.driver?.name
    }
    
}

