//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 11.02.2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcome
    }
    


}
