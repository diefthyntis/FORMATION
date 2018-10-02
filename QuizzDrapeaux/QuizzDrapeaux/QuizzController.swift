//
//  QuizzController.swift
//  QuizzDrapeaux
//
//  Created by alan on 09/09/2018.
//  Copyright © 2018 diefthyntis. All rights reserved.
//

import UIKit

class QuizzController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var drapeauImageView: UIImageView!
    @IBOutlet weak var bouton1: MonBouton!
    @IBOutlet weak var bouton2: MonBouton!
    @IBOutlet weak var bouton3: MonBouton!
    @IBOutlet weak var bouton4: MonBouton!
    
    @IBOutlet weak var blur: UIVisualEffectView!
    
    @IBOutlet weak var popup: MaVue!
    
    @IBOutlet weak var popimageView: UIImageView!
    
    @IBOutlet weak var popResultat: UILabel!
    
    @IBOutlet weak var popReponse: UILabel!
    
    @IBOutlet weak var popBouton: MonBouton!
    
    var questions = [Question]()
    var questionPosee : Question?
    
    
    
    var questionActuelle = 0
    var score = 0
    
    
    @IBAction func boutonAppuyer(_ sender: Any) {
        if let question = questionPosee, let bouton = sender as? UIButton {
            if question.tagCorrect == bouton.tag {
                score += 1
                MontrerPopup(gagne: true, pays: bouton.titleLabel?.text ?? "", drapeau: question.drapeau)
                scoreLabel.MiseAJour(questionActuelle,score)
                
            }
            else {
                var pays: String?
                switch question.tagCorrect {
                case 1: pays = bouton1.titleLabel?.text
                case 2: pays = bouton2.titleLabel?.text
                case 3: pays = bouton3.titleLabel?.text
                case 4: pays = bouton4.titleLabel?.text
                default: break
                }
                MontrerPopup(gagne: false, pays: pays ?? "", drapeau: question.drapeau)
            }
            ObtenirQuestion()
        }
        else {
            self.navigationController?.popViewController(animated: true)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.MiseAJour(questionActuelle,score)
        questions = PeuplerQuestion()
        ObtenirQuestion()
        // Do any additional setup after loading the view.
    }
    
    func PeuplerQuestion() -> [Question] {
        var mesQuestions = [Question]()
        let france = Question(drapeau: #imageLiteral(resourceName: "fr"), rep1: "france", rep2: "italie", rep3: "luxembourg", rep4: "irlange", tag: 1)
        let belgique = Question(drapeau: #imageLiteral(resourceName: "be"), rep1: "allemagne", rep2: "autriche", rep3: "cameroun", rep4: "belgique", tag: 4)
        let finlande = Question(drapeau: #imageLiteral(resourceName: "fi"), rep1: "Suède", rep2: "Finlande", rep3:"Islande", rep4:"Norvège", tag: 2)
        let grece = Question(drapeau: #imageLiteral(resourceName: "gr"), rep1: "Australie", rep2: "Etats-Unis", rep3:"Grèce", rep4:"Paraguay", tag: 3)
        let japon = Question(drapeau: #imageLiteral(resourceName: "jp"), rep1: "Japon", rep2: "Chine", rep3:"Corée du Nord", rep4:"Thailande", tag: 1)
        let mexique = Question(drapeau: #imageLiteral(resourceName: "mx"), rep1: "Irlande", rep2: "Mexique", rep3:"Italie", rep4:"Portugal", tag: 2)
        let paysBas = Question(drapeau: #imageLiteral(resourceName: "nl"), rep1: "France", rep2: "Serbie", rep3:"Pays-Bas", rep4:"Croatie", tag: 3)
        let portugal = Question(drapeau: #imageLiteral(resourceName: "pt"), rep1: "Namibie", rep2: "Ukraine", rep3:"Iran", rep4:"Portugal", tag: 4)
        let tunisie = Question(drapeau: #imageLiteral(resourceName: "tn"), rep1: "Tunisie", rep2: "Turquie", rep3:"Maroc", rep4:"Algérie", tag: 1)
        let uruguay = Question(drapeau: #imageLiteral(resourceName: "uy"), rep1: "Argentine", rep2: "uruguay", rep3: "Paraguay", rep4: "Chili", tag: 2)
        
        mesQuestions.append(contentsOf: [france,belgique,finlande,grece,japon,mexique,paysBas,portugal,tunisie,uruguay])
        
        return mesQuestions
    }

    func ObtenirQuestion() {
        if questionActuelle < 10 {
            questionActuelle += 1
            questionPosee = questions[questionActuelle-1]
            if let question = questionPosee {
                drapeauImageView.image = question.drapeau
                bouton1.setTitle(question.reponse1, for: .normal)
                bouton2.setTitle(question.reponse2, for: .normal)
                bouton3.setTitle(question.reponse3, for: .normal)
                bouton4.setTitle(question.reponse4, for: .normal)
                
            }
        }
        else {
            let meilleurScore = UserDefaults.standard.integer(forKey: "score")
            if score > meilleurScore {
                UserDefaults.standard.set(score, forKey: "score")
                UserDefaults.standard.synchronize()
            }
            self.navigationController?.popViewController(animated: true)
            
        }
    }
    
    func MontrerPopup(gagne: Bool, pays: String, drapeau: UIImage) {
        popimageView.image = drapeau
        popReponse.text = "la bonne réponse était: " + pays
        if gagne {
            popResultat.text = "Félicitations"
        }
        else {
            popResultat.text = "Mauvaise réponse"
        }
        
        UIView.animate(withDuration: 0.3, animations: {
            self.blur.alpha=1
            self.popup.alpha = 1
        }) {
            (success) in
        }
    }

    @IBAction func PopBoutonAppuyer(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            self.blur.alpha = 0
            self.popup.alpha = 0
        }) { (sucess) in
            self.ObtenirQuestion()
            
        }
    }
    
}
