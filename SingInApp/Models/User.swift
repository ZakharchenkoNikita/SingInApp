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
        // я не знал, где мне впихнуть это заполнение, ибо я не хотел руками прописывать. Жду совет. 
        var images: [String] = []
        
        for image in 0...10 {
            images.append("galleryImage\(image)")
        }
        
        return User(
                login: "Nikita",
                password: "pass",
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
                                                    aboutMe: "Молодой, амбициозный. Увлекаюсь ездой на велосипеде. Мечтаю работать в IT сфере плечом к плечу с профессионалами."),
                                 foto:
                                    PersoneFoto(mainProfileFoto: "galleryImage0",
                                                photoGallery: PhotoGallery(images: images))))
    }
}
