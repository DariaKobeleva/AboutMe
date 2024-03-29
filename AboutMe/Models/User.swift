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
            bio: """
                      Привет! Меня зовут Даша, мне 28 лет. Чуть больше года назад я переехала из Санкт-Петербурга в Сербию.
                      В 2018 году я окончила СПБГут им. проф.М.А. Бонч-Бруевича, где я изучала электронику и наноэлектронику. Хотя моя профессия могла бы направить меня в инженерные ряды, я выбрала иной путь – стала директором по персоналу в строительной компании.
                      С переездом я решила, что хочу работать удаленно. Первым делом я погрузилась в тестирование, но вскоре поняла, что это не мое. После обратила внимание на frontend разработку. И вот, когда я уже начала прогрессировать в этом направлении, мне посоветовали изучить Swift. Язык мне сразу пришелся по душе, благодаря его лаконичности и отсутствию тех очевидных недостатков, что имеет JavaScript.
                      Я ознакомилась с ресурсом SwiftBook, просмотрела несколько уроков и презентацию курса, и теперь я здесь.
                      В Питере у меня осталась часть сердца – и мой мотоцикл с швейными машинками. В Сербии, я нахожу радость в изучении нового, путешествиях и открытии для себя этой удивительной страны. :)
                 """
        )
    }
    
}
