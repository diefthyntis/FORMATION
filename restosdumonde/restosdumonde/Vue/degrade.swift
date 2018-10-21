//
//  degrade.swift
//  restosdumonde
//
//  Created by alan on 02/10/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import Foundation
import UIKit

class Degrade: CAGradientLayer {
    
    override init(layer: Any) {
        super.init(layer: layer)
        MiseEnPlace()
    }

    override init() {
        super.init()
        MiseEnPlace()
    }
    
    required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
        MiseEnPlace()
    }
    
    func MiseEnPlace() {
        frame = UIScreen.main.bounds
        colors = [NOIR.cgColor,GRIS_TRES_FONCE.cgColor]
        startPoint = CGPoint(x: 0, y: 0)
        endPoint = CGPoint(x: 1, y: 1)
        locations = [0,1]
        
    }
}


