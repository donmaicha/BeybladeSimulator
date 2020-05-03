//
//  Frame.swift
//  BeybladeSimulator
//
//  Created by dinmaicha on 2020/04/19.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Frame:Parts {
    var frames:[String] = ["エキスパンド", "ダガー", "ウォール", "バンプ"]
    
    override init(type: Bayblade.bladeType) {
        super.init(type: type)
        let frame: String = self.SelectDisk(target: frames)
        
        self.Name = frame
    }
}
