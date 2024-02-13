//
//  User.swift
//  AboutMe
//
//  Created by Дарья Кобелева on 13.02.2024.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "Daria",
            password: "1111",
            
            person: Person(
                name: "Daria",
                surname: "Kobeleva",
                age: 28,
                city: "Belgrade",
                education: "Спбгут им. проф. М. А. Бонч-Бруевича", 
                bio: "Bio_)"
            )
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
}
