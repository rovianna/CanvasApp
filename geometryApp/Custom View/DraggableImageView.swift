//
//  DraggableImageView.swift
//  geometryApp
//
//  Created by Rodrigo Vianna on 29/07/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class DraggableImageView: UIImageView {
    
    var dragStartPositionRelativeToCenter: CGPoint?
    
    override init(image: UIImage!) {
        super.init(image: image)
        
        self.isUserInteractionEnabled = true
        
        addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector((handlePan(_:)))))
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
    
    @objc func handlePan(_ nizer: UIPanGestureRecognizer!) {
        if nizer.state == UIGestureRecognizerState.began {
            let locationInView = nizer.location(in: superview)
            dragStartPositionRelativeToCenter = CGPoint(x: locationInView.x - center.x, y: locationInView.y - center.y)
            
            layer.shadowOffset = CGSize(width: 0, height: 20)
            layer.shadowOpacity = 0.3
            layer.shadowRadius = 6
            
            return
        }
        
        if nizer.state == UIGestureRecognizerState.ended {
            dragStartPositionRelativeToCenter = nil
            
            layer.shadowOffset = CGSize(width: 0, height: 3)
            layer.shadowOpacity = 0.5
            layer.shadowRadius = 2
            
            return
        }
        
        let locationInView = nizer.location(in: superview)
        
        UIView.animate(withDuration: 0.1) {
            self.center = CGPoint(x: locationInView.x - self.dragStartPositionRelativeToCenter!.x,
                                  y: locationInView.y - self.dragStartPositionRelativeToCenter!.y)
        }
    }
    
}
