//
//  GeometryFactory.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class GeometryFactory {
    static func getGeometry(form: Form, positionX: CGFloat, positionY: CGFloat) -> CAShapeLayer {
        switch form {
        case .circle: return Circle.drawForm(positionX: positionX, positionY: positionY)
        case .square: return Square.drawForm(positionX: positionX, positionY: positionY)
        case .triangle: return Triangle.drawForm(positionX: positionX, positionY: positionY)
        }
    }
}
