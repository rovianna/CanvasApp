//
//  Circle.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class Circle: Geometry {
   static func drawForm(positionX: CGFloat, positionY: CGFloat) -> CAShapeLayer {
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: positionX, y: positionY), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 3.0
        
        return shapeLayer
    }
    
    var object: Form = .circle
}
