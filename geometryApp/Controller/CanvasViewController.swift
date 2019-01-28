//
//  CanvasViewController.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 28/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {
    
    @IBOutlet weak var geometryView: UIView!

    var formPicker: Form = .circle
    var createdLayers = [CALayer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.location(in: view)
            let layer = GeometryFactory.getGeometry(form: formPicker, positionX: position.x, positionY: position.y)
            createdLayers.append(layer)
            view.layer.addSublayer(layer)
        }
    }
    
    @IBAction func removeLastImageAction(_ sender: UIButton) {
        if !createdLayers.isEmpty, let lastCreatedLayer = createdLayers.popLast(), let index = view.layer.sublayers!.firstIndex(of: lastCreatedLayer) {
            view.layer.sublayers!.remove(at: index)
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
