//
//  GtChip.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/05/12.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class GtChip: Chip {
    // ウエイト一体型かどうか
    var containsWeight: Bool = true
    // ベース一体型かどうか
    var containsBase: Bool = true
    
    init(name: String, type: Bayblade.bladeType, rotateType: Parts.enumRotation = Parts.enumRotation.RIGHT, needsWeight: Bool = true, needsBase: Bool = true) {
        super.init(name: name, type: type, rotateType: rotateType)
        containsWeight = needsWeight
        containsBase = needsBase
    }
    
}
