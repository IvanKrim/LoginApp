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
    
    static func getUser() -> User {
        
        User(
            login: "User",
            password: "123321",
            person: Person(
                name: "Ivan",
                surname: "Krim",
                age: "25"
            )
        )
    }
    
    var fullName: String {
        person.name + " " + person.surname
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
}

