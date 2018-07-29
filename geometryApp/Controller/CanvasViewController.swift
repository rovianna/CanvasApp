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
    
    @IBOutlet weak var geometryView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let geometricFormImageView = DraggableImageView(image: #imageLiteral(resourceName: "smiling-emoticon-square-face"))
        view.addSubview(geometricFormImageView)
        geometricFormImageView.translatesAutoresizingMaskIntoConstraints = false
        geometricFormImageView.heightAnchor.constraint(equalToConstant: 128).isActive = true
        geometricFormImageView.widthAnchor.constraint(equalToConstant: 128).isActive = true
        geometricFormImageView.isUserInteractionEnabled = true
        
        geometryView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onClickShowFormAction(_:))))
    }
    
    @objc func onClickShowFormAction(_ sender: UITapGestureRecognizer) {
        let position = sender.location(ofTouch: 0, in: geometryView)
        
    }
    
    @IBAction func geometryFormPickerAction(_ sender: UIButton) {
        switch sender.tag {
        case 0: formPicker = .circle
        case 1: formPicker = .square
        default: formPicker = .triangle
        }
    }
}
