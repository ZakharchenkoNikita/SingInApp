//
//  User.swift
//  SingInApp
//
//  Created by Nikita on 16.07.21.
//

struct User {
    let login: String
    let password: String
    let persone: [Persone]
}

extension User {
    static func getInfo() -> [User] {
        return [
            User(
                login: "Nikita",
                password: "pass",
                persone: [Persone(name: "Nikita", surmane: "Zakharchenko", age: 22)])
        ]
    }
}
