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
    
    let gtChip:[GtChip] = [
        GtChip(name:"ディアボロス(一体型)", type: Bayblade.bladeType.GT,rotateType: Parts.enumRotation.BOTH),
        GtChip(name: "ドラゴン(新)", type: Bayblade.bladeType.GT, rotateType: Parts.enumRotation.RIGHT, needsWeight: true),
        GtChip(name: "ドラゴン(旧)", type: Bayblade.bladeType.GT, rotateType: Parts.enumRotation.RIGHT, needsWeight: true),
        GtChip(name: "スプリガン", type: Bayblade.bladeType.GT, rotateType: Parts.enumRotation.BOTH, needsWeight: true),
        GtChip(name: "ファブニル", type: Bayblade.bladeType.GT, rotateType: Parts.enumRotation.LEFT, needsWeight: true),
        GtChip(name: "バハムート", type: Bayblade.bladeType.GT, rotateType: Parts.enumRotation.LEFT, needsWeight: true),
        GtChip(name: "レガリアジェネシス", type: Bayblade.bladeType.GT, rotateType: Parts.enumRotation.RIGHT, needsWeight: false, needsBase: false),
        GtChip(name: "プライムアポカリプス", type: Bayblade.bladeType.GT, rotateType: Parts.enumRotation.RIGHT, needsWeight: false, needsBase: false),
    ]
    
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
        "インペリアル", "ユニオン", "コスモ", "スラッシュ", "ロード"
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
    
    let spChip:[Chip] = [
        Chip(name: "ヴァルキリー", type: Bayblade.bladeType.SPARK_KING, rotateType: Parts.enumRotation.RIGHT),
        Chip(name: "ハイペリオン", type: Bayblade.bladeType.SPARK_KING, rotateType: Parts.enumRotation.RIGHT),
        Chip(name: "サタン", type: Bayblade.bladeType.SPARK_KING, rotateType: Parts.enumRotation.RIGHT),
        Chip(name: "ラグナルク", type: Bayblade.bladeType.SPARK_KING, rotateType: Parts.enumRotation.RIGHT),
        Chip(name: "ヘリオス", type: Bayblade.bladeType.SPARK_KING, rotateType: Parts.enumRotation.LEFT)
    ]
    
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
                let index: Int = Int.random(in: 0 ... gtChip.count - 1)
                baseName = (gtChip[index].hasBase) ? self.SelectDisk(target: gtDisk_right) : ""
                baseName += gtChip[index].Name
                baseName += (gtChip[index].hasWeight) ? self.SelectDisk(target: gtWeught) : ""
            }
            else
            {
                let index: Int = Int.random(in: 0 ... gtChip.count - 1)
                baseName = (gtChip[index].hasBase) ? self.SelectDisk(target: gtDisk_left) : ""
                baseName += gtChip[index].Name
                baseName += (gtChip[index].hasWeight) ? self.SelectDisk(target: gtWeught) : ""
            }
            break
        case Bayblade.bladeType.SPARK_KING:
            if (isRightRotation) {
                baseName = self.SelectDisk(target: spDisk_right)
                baseName += SelectChip(target: spChip, rotate: enumRotation.RIGHT)
                baseName += self.SelectDisk(target: spChassis_right)
            }
            else
            {
                baseName = self.SelectDisk(target: spDisk_left)
                baseName += SelectChip(target: spChip, rotate: enumRotation.LEFT)
                baseName += self.SelectDisk(target: spChassis_left)
            }
            break
        case Bayblade.bladeType.LEGEND:
            baseName = self.SelectDisk(target: gtDisk_left)
            break
        }
        
        self.Name = baseName
    }
    
    func SelectChip(target:[Chip], rotate:enumRotation) -> String {
        let results = target.filter { c in ((c.rotationType == rotate) || (c.rotationType == enumRotation.BOTH))  }
        let random_name:Chip = results.randomElement()!

        return random_name.Name
    }
    
    func SelectBase(target:[Base], rotate:enumRotation) -> String {
        let results = target.filter { c in ((c.rotationType == rotate) || (c.rotationType == enumRotation.BOTH))  }
        let random_name:Base = results.randomElement()!

        return random_name.Name
    }
}
