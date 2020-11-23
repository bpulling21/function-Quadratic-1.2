//
//  parabola.swift
//  functionQuadratic
//
//  Created by Brooke Pulling on 11/13/18.
//  Copyright © 2018 Brooke Pulling. All rights reserved.
//

import Foundation

class Parabola{
    let a: Float
    let b: Float
    let c: Float
    var h: Float?
    var k: Float?
    var p: Float?
    var directrix: Float?
    var focusX: Float?
    var focusY: Float?
    
    init(a: Float,b: Float, c: Float){
        self.a = a
        self.b = b
        self.c = c
        self.convertVertexForm()
        self.computeDirectrix()
    }
    func convertVertexForm(){
        self.h = -1 * b / (2 * a)
        self.k = c - (( b * b ) / ( 4 * a ))
        
    }
    
    func computeDirectrix(){
        self.p = (1 / (4 * self.a))
        self.directrix = self.k! - self.p!
        self.focusX = self.h
        self.focusY = self.k! + self.p!

    }
    
    func returnDirectrix() -> Float {
        return self.directrix ?? 294

    }

    func returnFocusY() -> Float {
        return self.focusY ?? 294
    }
    
    func returnFocusX() -> Float {
        return self.focusX ?? 287
    }
    
}

