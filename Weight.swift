//
//  Weight.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Weight:Parts {
    var weights:[String] = ["OO", "0", "VG", "WH"]
    var isCore = false
    
    override init() {
        super.init()
        SelectDisk(target: weights)
        if ((Name == weights[0]) || (Name == weights[1])) {
            isCore = true
        }
    }
}
