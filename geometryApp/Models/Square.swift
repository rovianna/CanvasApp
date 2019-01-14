//
//  Square.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class Square: Geometry {
    static func drawForm(positionX: CGFloat, positionY: CGFloat) -> CAShapeLayer {
        let path = UIBezierPath(rect: CGRect(x: positionX - 10, y: positionY - 10, width: 20, height: 20))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 3.0
        
        return shapeLayer
    }
    
    var object: Form = .square
    
    
}
