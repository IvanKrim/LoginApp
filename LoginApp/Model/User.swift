//
//  User.swift
//  LoginApp
//
//  Created by Kalabishka Ivan on 16.05.2021.
//


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "123321",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let avatarImage: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Ivan", surname: "Krim", age: "25", avatarImage: "IMG_3653 2")
    }
}

