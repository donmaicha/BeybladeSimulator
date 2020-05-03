//
//  Weight.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Disk:Parts {
    var disks:[String] = ["OO", "0", "VG", "WH", "7", "Bl", "Hr"]
    var isCore = false
    
    override init(type: Bayblade.bladeType) {
        super.init(type: type)
        let disk: String = self.SelectDisk(target: disks)
        
        self.Name = disk

        if ((Name == disks[0]) || (Name == disks[1])) {
            isCore = true
        }
    }
}