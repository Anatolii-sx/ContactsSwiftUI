//
//  Person.swift
//  ContactsSwiftUI
//
//  Created by Анатолий Миронов on 11.11.2021.
//

struct Person: Hashable {
    let name: String
    let surname: String
    let phone: String
    let email: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        
        var personsList: [Person] = []
       
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let photos = DataManager.shared.photos.shuffled()
        
        let countOfIteration = min(names.count, surnames.count, phones.count, emails.count, photos.count)
        
        for index in 0..<countOfIteration {
            personsList.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index],
                    photo: photos[index]
                )
            )
        }
        
        return personsList
    }
}
