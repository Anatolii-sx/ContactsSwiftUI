//
//  Contacts.swift
//  ContactsSwiftUI
//
//  Created by Анатолий Миронов on 11.11.2021.
//

import SwiftUI

struct Contacts: View {
    let persons: [Person]
    
    var body: some View {
        VStack {
            List(persons, id: \.self) { person in
                NavigationLink(destination: PersonDescription(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(persons: Person.getPersonsList())
    }
}
