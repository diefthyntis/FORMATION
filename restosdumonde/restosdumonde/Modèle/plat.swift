//
//  plat.swift
//  restosdumonde
//
//  Created by alan on 02/10/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import Foundation
import UIKit

class plat {
    private var _typePlat: TypePlat
    private var _pays: String
    private var _descriptionPlat: String
    private var _image: UIImage
    
    var type: TypePlat {
        return _typePlat
    }
    
    var pays: String {
        return _pays
    }
    
    var descriptionPlat : String {
        return _descriptionPlat
    }
    
    var image: UIImage {
        return _image
    }
    
    init (type: TypePlat, pays:String, desc: String, image: UIImage) {
        self._typePlat = type
        self._pays = pays
        self._descriptionPlat  = desc
        self._image = image
        
    }
    
}
