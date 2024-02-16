//
//  LogInViewController.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 11.02.2024.
//

import UIKit

final class LogInViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUser()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? TabBarController
        tabBarVC?.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") 
            return false
        }
        return true
    }
    
    @IBAction func forgotInfoButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.login) 🙃")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 🙂")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert  = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

