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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let geometricFormImageView = DraggableImageView(image: #imageLiteral(resourceName: "smiling-emoticon-square-face"))
        view.addSubview(geometricFormImageView)
        geometricFormImageView.translatesAutoresizingMaskIntoConstraints = false
        geometricFormImageView.heightAnchor.constraint(equalToConstant: 128).isActive = true
        geometricFormImageView.widthAnchor.constraint(equalToConstant: 128).isActive = true
        geometricFormImageView.isUserInteractionEnabled = true
    }
}
