//
//  MenuCellule.swift
//  restosdumonde
//
//  Created by alan on 02/10/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import UIKit

class MenuCellule: UICollectionViewCell {
    @IBOutlet weak var nomDuMenu: UILabel!
    @IBOutlet weak var vue: UIView!
    
    @IBOutlet weak var imageDuMenu: UIImageView!
    
    var menu: Menu!
    
    func MiseEnPlace(menu: Menu) {
        self.menu = menu
        vue.layer.cornerRadius = 30
        vue.layer.borderColor = NOIR.cgColor
        vue.layer.borderWidth = 1
        
        imageDuMenu.image = self.menu.image
        imageDuMenu.contentMode = .scaleAspectFit
        imageDuMenu.clipsToBounds = true // pour ne pas que l'image déborde
        imageDuMenu.layer.cornerRadius = imageDuMenu.frame.width / 2
        imageDuMenu.layer.borderWidth = 2
        imageDuMenu.layer.borderColor = GRIS_TRES_CLAIR.cgColor
        nomDuMenu.text = "Menu " + self.menu.pays
        nomDuMenu.textColor = GRIS_TRES_FONCE
        nomDuMenu.font = FONTE_DE_BASE
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
       
        
        
    }
}
