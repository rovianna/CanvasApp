//
//  Geometry.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 28/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

protocol Geometry {
    var positionX: CGFloat { get set }
    var positionY: CGFloat { get set }
    var image: UIImage { get set }
    var object: Form { get }
}

enum Form {
    case circle
    case square
    case triangle
}
