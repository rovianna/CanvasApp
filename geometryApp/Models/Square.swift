//
//  Square.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class Square: Geometry {
    var positionX: Int
    
    var positionY: Int
    
    var object: Form = .square
    
    init(positionX: Int, positionY: Int) {
        self.positionY = positionY
        self.positionX = positionX
    }
}
