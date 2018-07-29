//
//  Geometry.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 28/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class Geometry {
    var height: Int
    var width: Int
    
    var radius: Int {
        return height * width
    }
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
}

class Square {
    var geometry: Geometry
    
    init(geometry: Geometry) {
        self.geometry = geometry
    }
}

class Circle {
    var geometry: Geometry
    
    init(geometry: Geometry) {
        self.geometry = geometry
    }
}
