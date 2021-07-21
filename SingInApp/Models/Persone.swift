//
//  Profile.swift
//  SingInApp
//
//  Created by Nikita on 16.07.21.
//

struct Persone {
    let name: String
    let surmane: String
    let shortInformation: ShortInformation
    let moreInformation: MoreInformation
    let foto: PersoneFoto
}

extension Persone {
    var fullName: String {
        "\(name) \(surmane)"
    }
}
