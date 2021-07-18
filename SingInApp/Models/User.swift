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
        var images: [String] = []
        
        for image in 0...2 {
            images.append("galleryImage\(image)")
        }
        
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
                                    MoreInformation(workPlace: "Интернет-продавец",
                                                    relatives: .sister,
                                                    favoriteBook: "1984",
                                                    favoriteMusician: "Max Korzh",
                                                    favoriteFilm: "Бойцовский клуб",
                                                    aboutMe: "Молодой амбициозный. Увлекаюсь ездой на велосипеде. Мечтаю работать в IT сфере плечом к плечу с профессионалами."),
                                 foto:
                                    PersoneFoto(mainProfileFoto: "galleryImage1",
                                                photoGallery: PhotoGallery(images: images))))
    }
}
