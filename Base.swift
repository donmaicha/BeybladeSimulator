//
//  Base.swift
//  BeybladeSimulator
//
//  Created by donmaicha on 2020/04/08.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import Foundation

class Base: Parts {
    let isRightRotation: Bool = arc4random_uniform(2) == 0
    
    //@todo とりあえず、配列に格納されたディスクの中からランダムに抽出させる
    var disks:[String] = ["グライド", "スーパー", "イレイズ", "インペリアル", "ユニオン", "プライムアポカリプス", "レガリアジェネシス", "コスモ"]
    
    let gtCip_right:[String] = [
        "ディアボロス(ウェイト一体)", "ドラゴン(新)", "ドラゴン(旧)", "スプリガン"
    ]
    let gtCip_left:[String] = [
        "ディアボロス(ウェイト一体)", "スプリガン", "ファブニル", "バハムート"
    ]
    let gtWeught:[String] = [
        "滅", "天", "幻", "斬"
    ]
    let gtDisk_right:[String] = [
        "インペリアル", "ユニオン", "プライムアポカリプス", "レガリアジェネシス", "コスモ", "スラッシュ", "ロード"
    ]
    let gtDisk_left:[String] = [
        "イレイズ", "ロード", "ドレッド"
    ]
    
    let spDisk_right:[String] = [
        "グライド", "スーパー", "カース", "ブレイブ"
    ]
    let spDisk_left:[String] = [
        "キング"
    ]
    let spCip_right:[String] = ["ヴァルキリー", "ハイペリオン", "サタン", "ラグナルク"]
    let spCip_left:[String] = ["ヘリオス"]
    let spChassis_right:[String] = ["1A", "2A", "1B", "1S", "1D"]
    let spChassis_left:[String] = ["1B", "1S", "1D"]
    
    let legendDisk: [String] = [
        "アースアクイラ", "フレイムサジタリオ"
    ]
    
    override init(type: Bayblade.bladeType) {
        super.init(type: type)

        var baseName: String = ""
        
        switch type {
        case Bayblade.bladeType.GT:
            if (isRightRotation) {
                baseName = self.SelectDisk(target: gtDisk_right)
                baseName += self.SelectDisk(target: gtCip_right)
                baseName += self.SelectDisk(target: gtWeught)
            }
            else
            {
                baseName = self.SelectDisk(target: gtDisk_left)
                baseName += self.SelectDisk(target: gtCip_left)
                baseName += self.SelectDisk(target: gtWeught)
            }
            break
        case Bayblade.bladeType.SPARK_KING:
            if (isRightRotation) {
                baseName = self.SelectDisk(target: spDisk_right)
                baseName += self.SelectDisk(target: spCip_right)
                baseName += self.SelectDisk(target: spChassis_right)
            }
            else
            {
                baseName = self.SelectDisk(target: spDisk_left)
                baseName += self.SelectDisk(target: spCip_left)
                baseName += self.SelectDisk(target: spChassis_left)
            }
            break
        case Bayblade.bladeType.LEGEND:
            baseName = self.SelectDisk(target: gtDisk_left)
            break
        }
        
        self.Name = baseName
    }
}
