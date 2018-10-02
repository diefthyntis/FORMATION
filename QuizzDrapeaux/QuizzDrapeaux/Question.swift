//
//  Question.swift
//  QuizzDrapeaux
//
//  Created by alan on 14/09/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//
import UIKit
import Foundation

class Question {
    private var _drapeau : UIImage
    private var _reponse1: String
    private var _reponse2: String
    private var _reponse3: String
    private var _reponse4: String
    private var _tagCorrect: Int
    var drapeau: UIImage {
        return _drapeau
    }
    var reponse1: String {
        return _reponse1
    }
    var reponse2: String {
        return _reponse2
    }
    var reponse3: String {
        return _reponse3
    }
    var reponse4: String {
        return _reponse4
    }
    var tagCorrect: Int {
        return _tagCorrect
    }
    init(drapeau: UIImage,rep1: String, rep2: String, rep3: String, rep4: String,tag: Int) {
        self._drapeau = drapeau
        self._reponse1 = rep1
        self._reponse2 = rep2
        self._reponse3 = rep3
        self._reponse4 = rep4
        self._tagCorrect = tag
    }
}
