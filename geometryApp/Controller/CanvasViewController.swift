//
//  CanvasViewController.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 28/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit
import CoreGraphics

class CanvasViewController: UIViewController {
    
    var formPicker: Form = .circle
    var currentImage = [DraggableImageView]()
    
    @IBOutlet weak var geometryView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        geometryView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onClickShowFormAction(_:))))
    }
    
    @objc func onClickShowFormAction(_ sender: UITapGestureRecognizer) {
        let position = sender.location(ofTouch: 0, in: view)
        var geometry: Geometry?
        switch formPicker {
        case .circle: geometry = GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y, image: #imageLiteral(resourceName: "smiling-emoticon-square-face"))
        case .square: geometry = GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y, image: #imageLiteral(resourceName: "icon"))
        case .triangle: geometry = GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y, image: #imageLiteral(resourceName: "triangle"))
        }
        
        if let geometry = geometry {
            let circlePath = UIBezierPath(arcCenter: CGPoint(x: 100,y: 100), radius: CGFloat(20), startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = circlePath.cgPath
            
            shapeLayer.fillColor = UIColor.clear.cgColor
            shapeLayer.strokeColor = UIColor.red.cgColor
            shapeLayer.lineWidth = 1.0
            let view = UIView()
            view.layer.addSublayer(shapeLayer)
            self.view.addSubview(view)
            view.layer.position = CGPoint(x: position.x, y: position.y)
        }
    }
    
    @IBAction func removeLastImageAction(_ sender: UIButton) {
        if !currentImage.isEmpty {
        currentImage.removeLast()
        }
    }
    
    
    @IBAction func geometryFormPickerAction(_ sender: UIButton) {
        switch sender.tag {
        case 0: formPicker = .circle
        case 1: formPicker = .square
        default: formPicker = .triangle
        }
    }
}
