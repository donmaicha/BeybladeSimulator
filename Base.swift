//
//  Base.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Base: Parts {
    //@todo とりあえず、配列に格納されたディスクの中からランダムに抽出させる
    var disks:[String] = ["グライド", "スーパー", "イレイズ", "インペリアル", "ユニオン", "プライムアポカリプス", "レガリアジェネシス", "コスモ"]
    
    override init() {
        super.init()
        SelectDisk(target: disks)
    }
}
