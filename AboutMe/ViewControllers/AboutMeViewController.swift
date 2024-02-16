//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 13.02.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var educationLable: UILabel!
    
    @IBOutlet var myfotoImage: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        cityLabel.text = user.person.city
        educationLable.text = user.person.education

        myfotoImage.layer.cornerRadius = myfotoImage.frame.height / 2

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let bioVC = segue.destination as? BioViewController
        bioVC?.user = user
    }
}

