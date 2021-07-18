//
//  User.swift
//  SingInApp
//
//  Created by Nikita on 16.07.21.
//

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
                                 shortInformation:
                                    ShortInformation(age: 22,
                                                     gender: .male,
                                                     familyStatus: .haveAPartner,
                                                     currentCity: "Кёльн",
                                                     pet: .parrot),
                                 moreInformation:
                                    MoreInformation(workPlace: "Я красивый.",
                                                    relatives: .sister,
                                                    aboutMe: "!"),
                                 foto:
                                    PersoneFoto(mainProfileFoto: "profileImage")))
    }
}
