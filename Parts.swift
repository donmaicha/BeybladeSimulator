//
//  Parts.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Parts {
    // 名前
    var name: String = ""
    var Name: String {
        get {
            return self.name
        }
        set(value) {
            self.name = value
        }
    }
    // 種別
    var bladeType:Bayblade.bladeType = Bayblade.bladeType.GT
    // 所持しているかどうか
    var has: Bool = false
    // 回転種別
    var rotationType:enumRotation = enumRotation.RIGHT
    enum enumRotation:Int {
        case RIGHT
        case LEFT
        case BOTH
    }
    
    init(type: Bayblade.bladeType) {
        self.bladeType = type
    }
    
    func SelectDisk(target:[String]) -> String {
        let random_name:String = target.randomElement() ?? ""
        return random_name
    }
    
    func CallName() {
        print(self.Name)
    }
}
