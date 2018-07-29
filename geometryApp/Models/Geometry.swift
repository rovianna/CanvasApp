//
//  Geometry.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 28/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

protocol Geometry {
    var positionX: Int { get set }
    var positionY: Int { get set }
    var object: Form { get }
}

enum Form {
    case circle
    case square
    case triangle
}
