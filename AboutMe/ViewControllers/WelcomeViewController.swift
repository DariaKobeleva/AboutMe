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
    
    var userName: String!
    private let userInfo = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "!!")!"
        greetingLabel.text = "My name is \(userInfo.person.name)!"
        
    }
}
