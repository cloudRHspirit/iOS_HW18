//
//  ViewController.swift
//  Contest
//
//  Created by Roman Hural on 04.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enterYourEmailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func entryToAContestButton(_ sender: UIButton) {
        if enterYourEmailTextField.hasText {
            performSegue(withIdentifier: "entryToAContestIdentifier", sender: sender)
        } else {
            UIView.animate(withDuration: 0.05, animations: {
                self.enterYourEmailTextField.transform = CGAffineTransform(translationX: 10, y: 0)
            }) { (_) in
                UIView.animate(withDuration: 0.05, animations: {
                    self.enterYourEmailTextField.transform = CGAffineTransform.identity
                })
        }
    }
    
    }

}
