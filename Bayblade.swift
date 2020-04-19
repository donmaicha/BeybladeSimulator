//
//  Bayblade.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Bayblade {
    var base:Base? = nil
    var weight:Weight? = nil
    var frame:Frame? = nil
    var driver:Driver? = nil
    
    init() {
        base = Base()
        weight = Weight()
        frame = Frame()
        driver = Driver()
    }
}
