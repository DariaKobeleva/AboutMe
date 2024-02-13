//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 13.02.2024.
//

import UIKit

class AboutMeViewController: UIViewController {

    
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var educationLable: UILabel!
    
    let user = User.getUser()
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        cityLabel.text = user.person.city
        educationLable.text = user.person.education
        
    }
    


}
