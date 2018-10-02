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

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Les menus du monde"
        maCollectionView.delegate = self
        maCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var maCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cellule = maCollectionView.dequeueReusableCell(withReuseIdentifier: celluleId, for: indexPath) as? MenuCellule {
            cellule.backgroundColor = GRIS_TRES_FONCE
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
