//
//  RoundedViews.swift
//  Artable
//
//  Created by PROGRAMAR on 29/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation
import UIKit

class RoundedButton : UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
    
}

class RoundedShadowView : UIView{
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
    }
}

class RoundedImageView: UIImageView{
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
    
}
