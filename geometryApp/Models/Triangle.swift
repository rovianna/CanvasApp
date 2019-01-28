//
//  Triangle.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class Triangle: Geometry {
    static func drawForm(positionX: CGFloat, positionY: CGFloat) -> CAShapeLayer {
        let layer = CAShapeLayer()
        let path = CGMutablePath()
        
        path.move(to: CGPoint(x: positionX, y: positionY))
        path.addLine(to: CGPoint(x: positionX + 20, y: positionY + 30))
        path.addLine(to: CGPoint(x: positionX + 40, y: positionY))
        path.addLine(to: CGPoint(x: positionX, y: positionY))
        layer.strokeColor = UIColor.black.cgColor
        layer.lineWidth = 3.0
        layer.fillColor = UIColor.black.cgColor
        layer.path = path
        
        return layer
    }
    
    var object: Form = .triangle
    
}
