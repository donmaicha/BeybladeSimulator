//
//  Frame.swift
//  BeybladeSimulator
//
//  Created by dinmaicha on 2020/04/19.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Frame:Parts {
    var frames:[String] = ["エキスパンド", "ダガー"]
    
    override init() {
        super.init()
        SelectDisk(target: frames)
    }
}
