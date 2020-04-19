//
//  Driver.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Driver: Parts {
    var drivers:[String] = ["アルティメットリブートダッシュ", "エクストリームダッシュ", "ゼータダッシュ", "ユナイトダッシュ", "エクシード", "リボルブ", "ハイブリッド", "トリック", "イグニッションダッシュ", "ベアリング"]
    
    override init() {
        super.init()
        SelectDisk(target: drivers)
    }
}
