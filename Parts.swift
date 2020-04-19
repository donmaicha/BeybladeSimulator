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
    func SelectDisk(target:[String]) {
        let random_name:String = target.randomElement() ?? ""
        self.Name = random_name
    }
    func CallName() {
        print(self.Name)
    }
}
