//
//  Circle.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class Circle: Geometry {
    var positionX: CGFloat
    var positionY: CGFloat
    var object: Form = .circle
    
    init(positionX: CGFloat, positionY: CGFloat) {
        self.positionX = positionX
        self.positionY = positionY
    }
}
