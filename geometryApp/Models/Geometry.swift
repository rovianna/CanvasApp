//
//  Geometry.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 28/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

protocol Geometry {
    var object: Form { get }
    static func drawForm(positionX: CGFloat, positionY: CGFloat) -> CAShapeLayer
}

enum Form {
    case circle
    case square
    case triangle
}
