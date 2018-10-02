//
//  Extensions.swift
//  QuizzDrapeaux
//
//  Created by alan on 14/09/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    func MiseAJour(_ questionActuelle: Int, _ score: Int) {
        let attributed = NSMutableAttributedString(string: "Question actuelle: \(questionActuelle) \n", attributes: [.foregroundColor: UIColor.black, .font: UIFont.boldSystemFont(ofSize: 17)])
        attributed.append(NSAttributedString(string: "Score: \(score)/10",attributes: [.foregroundColor: UIColor.darkGray,.font: UIFont.boldSystemFont(ofSize: 17)]))
        
        self.attributedText = attributed
        
    }
    
}
