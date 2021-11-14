//
//  Numbers.swift
//  ContactsSwiftUI
//
//  Created by Анатолий Миронов on 11.11.2021.
//

import SwiftUI

struct Numbers: View {
    let persons: [Person]
    
    var body: some View {
        VStack {
            NavigationView {
                List(persons, id: \.self) { person in
                    Section(header: Text(person.fullName)) {
                        InfoLineView(
                            systemPicture: "phone",
                            colorOfPicture: .red,
                            text: person.phone
                        )
                        InfoLineView(
                            systemPicture: "tray",
                            colorOfPicture: .red,
                            text: person.email
                        )
                    }
                }
                .navigationTitle("Contacts List")
            }
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.getPersonsList())
    }
}
