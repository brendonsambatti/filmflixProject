//
//  ViewController.swift
//  ProjetoFilmes
//
//  Created by info 0033 on 13/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    let viewModel:ViewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTextField()
        self.buttonStyle()
    }
    
    func configTextField(){
        self.passwordTextField.delegate = self
        self.emailTextField.delegate = self
        self.passwordTextField.useUnderline()
        self.emailTextField.useUnderline()
        self.emailTextField.backgroundColor = UIColor.clear
        self.passwordTextField.backgroundColor = UIColor.clear
    }
    func buttonStyle(){
        self.registerButton.backgroundColor = UIColor.clear
        self.registerButton.layer.borderWidth = 0.5
        self.registerButton.layer.borderColor = #colorLiteral(red: 0.528213203, green: 0.1564585567, blue: 0.1124333218, alpha: 1)
        self.registerButton.layer.cornerRadius = registerButton.frame.height/2
        self.signInButton.layer.cornerRadius = 5.0
    }
    
    @IBAction func tappedForgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotPasswordSegue", sender: .none)
    }
    
    @IBAction func tappedSignInButton(_ sender: UIButton) {
        performSegue(withIdentifier: "HomeSegue", sender: .none)
    }
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        performSegue(withIdentifier: "RegisterSegue", sender: .none)
    }
    
    
}
extension ViewController:UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

