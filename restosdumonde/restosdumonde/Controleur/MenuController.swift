//
//  MenuController.swift
//  restosdumonde
//
//  Created by alan on 02/10/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import UIKit

class MenuController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let celluleId = "MenuCelluleId"
    var menus = [Menu]()

   
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Les menus du monde"
        maCollectionView.delegate = self
        maCollectionView.dataSource = self
        
        let vue = UIView(frame: maCollectionView.bounds)
        vue.layer.addSublayer(Degrade())
        maCollectionView.backgroundView = vue
        
        
        menus = LesPlats.obtenir.lesMenus()
        maCollectionView.reloadData()
    }
    
    @IBOutlet weak var maCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let menu = menus[indexPath.item]
        if let cellule = maCollectionView.dequeueReusableCell(withReuseIdentifier: celluleId, for: indexPath) as? MenuCellule {
            cellule.backgroundColor = GRIS_TRES_FONCE
            cellule.MiseEnPlace(menu: menu)
            return cellule
        }
        return UICollectionViewCell()
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largeur = maCollectionView.frame.width / 2 - 20
        return CGSize(width: largeur, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        // espace entre deux lignes
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        // espace entre les cellules
        return 10
    }
    
    
    
    
    
    
    
    
    
}
