//
//  ForgotPasswordViewController.swift
//  ProjetoFilmes
//
//  Created by info 0033 on 13/06/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var emailTextField:UITextField!
    @IBOutlet weak var sendButton:UIButton!
    @IBOutlet weak var returnButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTextField()
        self.buttonStyle()
    }
    
    func configTextField(){
        self.emailTextField.delegate = self
        self.emailTextField.backgroundColor = UIColor.clear
        self.emailTextField.useUnderline()

    }
    func buttonStyle(){
        self.returnButton.backgroundColor = UIColor.clear
        self.returnButton.layer.borderWidth = 0.5
        self.returnButton.layer.borderColor = #colorLiteral(red: 0.528213203, green: 0.1564585567, blue: 0.1124333218, alpha: 1)
        self.returnButton.layer.cornerRadius = returnButton.frame.height/2
        self.sendButton.layer.cornerRadius = 5.0
    }
    


}
extension ForgotPasswordViewController:UITextFieldDelegate{
    
}
