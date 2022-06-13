//
//  RegisterScreenViewController.swift
//  ProjetoFilmes
//
//  Created by info 0033 on 13/06/22.
//

import UIKit

class RegisterScreenViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var returnButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTextField()
        self.buttonStyle()
    }
    func configTextField(){
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        self.confirmPasswordTextField.delegate = self
        self.passwordTextField.useUnderline()
        self.emailTextField.useUnderline()
        self.confirmPasswordTextField.useUnderline()
        self.emailTextField.backgroundColor = UIColor.clear
        self.passwordTextField.backgroundColor = UIColor.clear
        self.confirmPasswordTextField.backgroundColor = UIColor.clear
    }
    func buttonStyle(){
        self.returnButton.backgroundColor = UIColor.clear
        self.returnButton.layer.borderWidth = 0.5
        self.returnButton.layer.borderColor = #colorLiteral(red: 0.528213203, green: 0.1564585567, blue: 0.1124333218, alpha: 1)
        self.returnButton.layer.cornerRadius = registerButton.frame.height/2
        self.registerButton.layer.cornerRadius = 5.0
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedReturnButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
extension RegisterScreenViewController:UITextFieldDelegate{
    
}
