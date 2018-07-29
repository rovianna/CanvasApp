//
//  Square.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class Square: Geometry {
    var positionX: CGFloat
    var positionY: CGFloat
    var image: UIImage
    var object: Form = .square
    
    init(positionX: CGFloat, positionY: CGFloat, image: UIImage) {
        self.positionY = positionY
        self.positionX = positionX
        self.image = image
    }
}
