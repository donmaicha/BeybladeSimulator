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
    var layer:Layer? = nil
    var disk:Disk? = nil
    var frame:Frame? = nil
    var driver:Driver? = nil
    var type: bladeType = bladeType.GT
    
    
    enum bladeType:Int {
        case GT
        case SPARK_KING
        case LEGEND
    }
    
    init() {
        // まず、ベイブレードの種類を決める(GT, 超王, レジェンド)
        type = selectBladeType()
        
        // 各パーツを選択する
//        base = Base(type: type)
        layer = Layer(type: type)
        disk = Disk(type: type)
        frame = Frame(type: type)
        driver = Driver(type: type)
    }
    
    /// ベイの種類を決定する
    func selectBladeType() -> bladeType {
        var ret = bladeType.GT
        
        let randomInt = Int.random(in: 0...2)
         
         switch randomInt {
         case 0:
             ret = bladeType.GT
             break
         case 1:
             ret = bladeType.SPARK_KING
             break
         case 2:
             ret = bladeType.LEGEND
             break
             
         default: break
         }
        
        return ret
    }
}
