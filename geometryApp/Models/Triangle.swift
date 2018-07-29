//
//  Triangle.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class Triangle: Geometry {
    var positionX: CGFloat
    var positionY: CGFloat
    var image: UIImage
    var object: Form = .triangle
    
    init(positionX: CGFloat, positionY: CGFloat, image: UIImage) {
        self.positionX = positionX
        self.positionY = positionY
        self.image = image
    }
}
