//
//  Point.swift
//  functionQuadratic
//
//  Created by Brooke Pulling on 10/30/18.
//  Copyright © 2018 Brooke Pulling. All rights reserved.
//

import Foundation

class Point{
    var x: Float
    var y: Float
    
    init(x: Float,y: Float){
        self.x = x
        self.y = y
    }
    
    func stringVersion() -> String{
        return("(\(x),\(y))")
    }
    
    func calcDistance(from other: Point) -> Float{
        let deltaX = self.x - other.x
        let deltaY = self.y - other.y
        let distance = sqrtf((deltaX * deltaX) + (deltaY * deltaY))
        
        return distance
    }
    
}
