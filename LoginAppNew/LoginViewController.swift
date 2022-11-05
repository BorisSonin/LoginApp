//
//  MainViewController.swift
//  LoginAppNew
//
//  Created by Борис Сонин on 04.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    let username = "John"
    let password = 12345
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTF.autocorrectionType = UITextAutocorrectionType.no
        usernameTF.autocorrectionType = UITextAutocorrectionType.no
    }
    
    @IBAction func LogInAction(_ sender: UIButton) {
        
        let usernameField = usernameTF.text
        let passwordField = passwordTF.text
        
        if (usernameField == username && passwordField == String(password)) {
        } else {
            alertMessage("Invalid login or password", "Please, enter correct login and password")
        }
    }
    
    
    @IBAction func remindName(_ sender: UIButton) {
        alertMessage("Opps!", "Your name is \(username)")
    }
    
    
    @IBAction func remindPassword(_ sender: UIButton) {
        alertMessage("Oops!", "Your password is \(password)")
    }
    
    
    func alertMessage(_ title: String, _ message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let textInTF = segue.destination as? WelcomeViewController else { return }
        textInTF.name = "Welcome, \(String(describing: usernameTF.text!))"
    }
    
    
    @IBAction func unwindSegueToMainScreen(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
}
