//
//  Chip.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/05/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Chip:Parts {
    
    init(name: String, type: Bayblade.bladeType, rotateType: Parts.enumRotation = Parts.enumRotation.RIGHT) {
        super.init(type: type)
        self.name = name
        self.rotationType = rotateType
    }
}
