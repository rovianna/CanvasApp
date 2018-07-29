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
        let position = sender.location(ofTouch: 0, in: geometryView)
        var geometry: Geometry?
        switch formPicker {
        case .circle: geometry = GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y, image: #imageLiteral(resourceName: "smiling-emoticon-square-face"))
        case .square: geometry = GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y, image: #imageLiteral(resourceName: "icon"))
        case .triangle: geometry = GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y, image: #imageLiteral(resourceName: "triangle"))
        }
        
        if let geometry = geometry {
            let image = DraggableImageView(image: geometry.image)
            image.frame = CGRect(x: geometry.positionX, y: geometry.positionY, width: 128, height: 128
            )
            currentImage.append(image)
            geometryView.addSubview(image)
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
