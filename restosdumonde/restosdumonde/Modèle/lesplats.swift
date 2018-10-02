//
//  lesplats.swift
//  restosdumonde
//
//  Created by alan on 02/10/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import Foundation
import UIKit

class LesPlats {
    static let obtenir = LesPlats()
    
    func lesMenus() -> [Menu] {
        var menus = [Menu]()
        let pizza = UIImage(named: "pizza")
        let it = Menu(pays: ITALIE, image: pizza!)
        
        let sushis = UIImage(named: "sushis")
        let jap = Menu(pays: JAPON, image: sushis!)
        
        let crevette = UIImage(named: "crevette")
        let chi = Menu(pays: CHINE, image: crevette!)
        
        let burger = UIImage(named: "burger")
        let usa = Menu(pays: USA, image: burger!)
        
        let paella = UIImage(named: "paella")
        let esp = Menu(pays: ESPAGNE, image: paella!)
        
        let fondue = UIImage(named: "fondue")
        let sui = Menu(pays: SUISSE, image: fondue!)
        
        menus.append(contentsOf: [it,jap,chi,usa,esp,sui])
        
        return menus
    }
}
