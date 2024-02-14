//
//  BioViewController.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 14.02.2024.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioTextView: UITextView!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bioTextView.text = user.person.bio
    }
    
}
