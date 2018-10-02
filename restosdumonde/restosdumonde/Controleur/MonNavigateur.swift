//
//  MonNavigateur.swift
//  restosdumonde
//
//  Created by alan on 02/10/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import UIKit

class MonNavigateur: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barTintColor = NOIR
        navigationBar.tintColor = GRIS_TRES_CLAIR
        navigationBar.titleTextAttributes = [.font: FONTE_DE_BASE as? Any, .foregroundColor: GRIS_TRES_CLAIR]
    }
    

    

}
