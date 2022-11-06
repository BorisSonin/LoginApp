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
    
    private let username = "John"
    private let password = 12345
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.name = "Welcome, \(username)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func logInAction(_ sender: UIButton) {
        if (usernameTF.text == username && passwordTF.text == String(password)) {
        } else {
            alertMessage("Invalid login or password", "Please, enter correct login and password")
            clearTF()
        }
    }
    
    @IBAction func remindName(_ sender: UIButton) {
        alertMessage("Opps!", "Your name is \(username)")
    }
    
    @IBAction func remindPassword(_ sender: UIButton) {
        alertMessage("Oops!", "Your password is \(password)")
    }
    
    @IBAction func unwindSegueToMainScreen(for segue: UIStoryboardSegue) {
        clearTF()
    }
    
    private func alertMessage(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func clearTF() {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}
