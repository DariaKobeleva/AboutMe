//
//  BioViewController.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 14.02.2024.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName)"
        bioTextView.text = user.person.bio
    }
}
