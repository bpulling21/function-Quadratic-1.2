//
//  angle.swift
//  functionQuadratic
//
//  Created by Brooke Pulling on 1/8/19.
//  Copyright © 2019 Brooke Pulling. All rights reserved.
//

import Foundation
import UIKit

struct UnitCircleAngle{
    let x: String
    let y: String
    let degrees: String
    let radians: String
    
    func radAsDecimal() -> CGFloat{
        let interim = Float(self.degrees)
        let degrees = CGFloat(interim ?? 0)
        let radians = degrees * .pi / 180
        return radians
    }
}
//let angle1 = UnitCircleAngle.init(x: "1", y: "0", degrees: "0", radians: "0")
//let angle2 = UnitCircleAngle.init(x: "√3/2", y: "1/2", degrees: "30", radians: "π/6")


let angles = [
    UnitCircleAngle.init(x: "1", y: "0", degrees: "0", radians: "0"),
    UnitCircleAngle.init(x: "√3/2", y: "1/2", degrees: "30", radians: "π/6"),
    UnitCircleAngle.init(x: "√2/2", y: "√2/2", degrees: "45", radians: "π/4"),
    UnitCircleAngle.init(x: "1/2", y: "√3/2", degrees: "60", radians: "π/3"),
    UnitCircleAngle.init(x: "0", y: "1", degrees: "90", radians: "π/2"),
    UnitCircleAngle.init(x: "-1/2", y: "√3/2", degrees: "120", radians: "2π/3"),
    UnitCircleAngle.init(x: "-√2/2", y: "√2/2", degrees: "135", radians: "3π/4"),
    UnitCircleAngle.init(x: "-√3/2", y:"1/2", degrees: "150", radians: "3π/4"),
    UnitCircleAngle.init(x: "-1", y:"0", degrees: "180", radians: "      π    "),
    UnitCircleAngle.init(x: "-√3/2", y:"-1/2", degrees: "210", radians: "7π/6"),
    UnitCircleAngle.init(x: "-√2/2", y:"-√2/2", degrees: "225", radians: "5π/4"),
    UnitCircleAngle.init(x: "-1/2", y:"-√3/2", degrees: "240", radians: "4π/3"),
    UnitCircleAngle.init(x: "0", y:"-1", degrees: "270", radians: "3π/2"),
    UnitCircleAngle.init(x: "1/2", y:"-√3/2", degrees: "300", radians: "5π/3"),
    UnitCircleAngle.init(x: "√2/2", y:"-√2/2", degrees: "315", radians: "7π/4"),
    UnitCircleAngle.init(x: "√3/2", y:"-1/2", degrees: "330", radians: "11π/6"),
    UnitCircleAngle.init(x: "1", y:"0", degrees: "360", radians: "     2π    ")
]

