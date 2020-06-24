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
        var diskName = bay.disk?.name
        if ((bay.disk?.isCore) == true) {
            diskName =  diskName! + " + " + bay.frame!.name
        }
        diskTextBox.text = diskName
        driverTextBox.text = bay.driver?.name
    }
    @IBAction func LotteryLayerOnly(_ sender: Any) {
        let bay = Bayblade()
        layerTextBox.text = bay.layer?.name
        var diskName = bay.disk?.name
        if ((bay.disk?.isCore) == true) {
            diskName =  diskName! + " + " + bay.frame!.name
        }
    }
    @IBAction func LotteryDiskOnly(_ sender: Any) {
        let bay = Bayblade()
        var diskName = bay.disk?.name
        if ((bay.disk?.isCore) == true) {
            diskName =  diskName! + " + " + bay.frame!.name
        }
        diskTextBox.text = diskName
    }
    @IBAction func LotteryDriverOnly(_ sender: Any) {
        let bay = Bayblade()
        driverTextBox.text = bay.driver?.name
    }
    
}

