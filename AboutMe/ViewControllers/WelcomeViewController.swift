//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 11.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var greetingLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.login)!"
        greetingLabel.text = "My name is \(user.person.fullName)!"
        
    }
}
