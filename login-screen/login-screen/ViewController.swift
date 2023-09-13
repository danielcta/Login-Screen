//
//  ViewController.swift
//  login-screen
//
//  Created by COTEMIG on 29/08/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var password: UITextField!
    @IBAction func clear(_ sender: Any) {
        email.text = ""
        password.text = ""
        
    }
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var email: UITextField!
    
        @IBAction func login2(_ sender: Any) {
            if email.text != ""{
                user.setValue(email.text, forKey: key)
                email.text = ""
                password.text = ""
                let alert = UIAlertController(title: "Alert", message: "Email cadastrado com sucesso!", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    var user = UserDefaults.standard
    var key = "atividade_Daniel06"


}

