//
//  MaClasseTabbar.swift
//  moment
//
//  Created by alan on 21/10/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import UIKit

class MaClasseTabbar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let uneCollection = MaClasseCollection()
        uneCollection.title = "Collection View"
        let uneImage = UIImage(imageLiteralResourceName: "collectionView")
        uneCollection.tabBarItem.image = uneImage
        
        let uneTable = MaClasseTable()
        uneTable.title = "Table View"
        let deuxImage = UIImage(imageLiteralResourceName: "tableView")
        uneTable.tabBarItem.image = deuxImage
        
        viewControllers = [uneCollection,uneTable]
        // Do any additional setup after loading the view.
    }
    


}
