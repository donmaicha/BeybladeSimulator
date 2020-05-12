//
//  GtChip.swift
//  BeybladeSimulator
//
//  Created by 福島拓希 on 2020/05/12.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class GtChip: Chip {
    // ウエイト有無
    var hasWeight: Bool = true
    var hasBase: Bool = true
    
    init(name: String, type: Bayblade.bladeType, rotateType: Parts.enumRotation = Parts.enumRotation.RIGHT, needsWeight: Bool = true, needsBase: Bool = true) {
        super.init(name: name, type: type, rotateType: rotateType)
        hasWeight = needsWeight
        hasBase = needsBase
    }
    
}
