//
//  AccueilController.swift
//  QuizzDrapeaux
//
//  Created by alan on 09/09/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import UIKit

class AccueilController: UIViewController {

    @IBOutlet weak var meilleurScoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Quizz drapeaux du monde!"
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let meilleurScore = UserDefaults.standard.integer(forKey: "score")
        let scoreString = "Meilleur score: \(meilleurScore)/10"
        meilleurScoreLabel.text = scoreString
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
