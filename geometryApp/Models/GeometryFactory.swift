//
//  GeometryFactory.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class GeometryFactory {
    static func getGeometry(form: Form, positionX: Int, positionY: Int) -> Geometry {
        switch form {
        case .circle: return Circle(positionX: positionX, positionY: positionY)
        case .square: return Square(positionX: positionX, positionY: positionY)
        case .triangle: return Triangle(positionX: positionX, positionY: position)
        }
    }
}
