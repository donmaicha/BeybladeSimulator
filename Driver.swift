//
//  Driver.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Driver: Parts {
    var drivers:[String] = [
        "Ul'", "X'", "Zt'", "U'", "Xc", "R", "Hy", "Tr", "Ig'", "Br", "Dm'", "P", "Zn", "Ev'", "Om", "Ω", "Qc'", "Mr'",
        "Kp'", "S", "Un"
    ]
    
    override init(type: Bayblade.bladeType) {
        super.init(type: type)
        let driver: String = self.SelectDisk(target: drivers)
        self.Name = driver
    }
}
