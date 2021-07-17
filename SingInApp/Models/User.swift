//
//  User.swift
//  SingInApp
//
//  Created by Nikita on 16.07.21.
//
import UIKit

struct User {
    let login: String
    let password: String
    let persone: Persone
}

extension User {
    static func getInfo() -> User {
        return User(
                login: "n",
                password: "p",
                persone: Persone(name: "Nikita",
                                 surmane: "Zakharchenko",
                                 age: 22,
                                 gender: .male,
                                 familyStatus: .haveAPartner,
                                 currentCity: "Cologne"))
    }
}
