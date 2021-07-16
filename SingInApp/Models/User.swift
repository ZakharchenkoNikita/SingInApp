//
//  User.swift
//  SingInApp
//
//  Created by Nikita on 16.07.21.
//

struct User {
    let login: String
    let password: String
    let profile: [Profile]
}

extension User {
    static func getInfo() -> [User] {
        return [
            User(
                login: "Nikita",
                password: "pass",
                profile: [Profile(name: "Никита", surmane: "Захарченко", age: 22)])
        ]
    }
}
