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
    
    private let validUserName = "User"
    private let validPassword = "1111"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        if userNameTextField.text == validUserName, passwordTextField.text == validPassword {
            showAlert(withTitle: "Молодец", andMessage: "Done")
        } else {
            showAlert(withTitle: "Invalid login or password",
                      andMessage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User 🙃")
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1111 🙂")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert  = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

