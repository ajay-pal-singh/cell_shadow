//
//  ExtensionCardCell.swift
//  peeking-cards
//
//  Created by Ajaypal Singh on 22/10/21.
//  Copyright © 2021 Burhan Shakir. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    
    enum shadowPosition {
        case allSides, bottom, left, top, right
    }
    
    func addShadow(to position: shadowPosition, size: Int, color: UIColor?, radius: Double, opacity: Float ){
        
        self.layer.shadowColor = color?.cgColor
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = opacity
        
        switch position {
        case .allSides:
            self.layer.shadowOffset = CGSize(width: 0, height: 0)
        case .bottom:
            self.layer.shadowOffset = CGSize(width: 0, height: size)
        case .left:
            self.layer.shadowOffset = CGSize(width: -size, height: 0)
        case .top:
            self.layer.shadowOffset = CGSize(width: 0, height: -size)
        case .right:
            self.layer.shadowOffset = CGSize(width: size, height: 0)
        }
    }
    
    func transformToLarge() {
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }
    }
    
    func transformToStandard() {
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform.identity
        }
    }
    
}
