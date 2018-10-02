//
//  MaVue.swift
//  QuizzDrapeaux
//
//  Created by alan on 14/09/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import Foundation
import UIKit

class MaVue : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        MiseEnPlace()
    }
    
    func MiseEnPlace() {
        layer.cornerRadius = 10
        layer.shadowRadius = 5
        layer.shadowOpacity = 75
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowColor = UIColor.black.cgColor
        
    }
}
