//
//  User.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 13.02.2024.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "11",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let city: String
    let education: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        return Person(
            name: "Daria",
            surname: "Kobeleva",
            age: 28,
            city: "Belgrade",
            education: "SPBGUT",
            bio:
                 """
                     Junior iOS Developer.

                     About me
                     💻 Inspired by creating simple and user-friendly mobile applications.
                     📱 Skilled in Swift, UIKit, and SwiftUI.
                     🚀 Always eager to learn and explore new technologies.
                     🌱 Currently improving my skills in iOS development.

                     Tech Stack
                     Languages:
                     Swift
                     JavaScript
                     Technologies & Tools:
                     UIKit
                     Core Data
                     Realm
                     SwiftUI
                     CocoaPods
                     RESTful APIs
                     Git
                 """
        )
    }
    
}
