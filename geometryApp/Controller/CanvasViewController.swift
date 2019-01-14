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
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.location(in: view)
            switch formPicker {
            case .circle: view.layer.addSublayer(GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y))
            case .square: view.layer.addSublayer(GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y))
            case .triangle: view.layer.addSublayer(GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y))
            }
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
