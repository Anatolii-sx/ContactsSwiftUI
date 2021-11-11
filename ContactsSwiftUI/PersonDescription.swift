//
//  PersonDescription.swift
//  ContactsSwiftUI
//
//  Created by Анатолий Миронов on 11.11.2021.
//

import SwiftUI

struct PersonDescription: View {
    let person: Person
    
    var body: some View {
        VStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: person.photo)
                        .resizable()
                        .frame(width: 125, height: 125)
                        .foregroundColor(.blue)
                    Spacer()
                }
                .padding()
                
                InfoView(phone: person.phone, email: person.email)
            }
            .listStyle(.grouped)
            .navigationTitle(person.fullName)
        }
    }
}

struct PersonDescription_Previews: PreviewProvider {
    static var previews: some View {
        PersonDescription(
            person: Person(
                name: "Gosha",
                surname: "Petrov",
                phone: "8(999)356-56-56",
                email: "gosha@bosha.ru",
                photo: "person.fill"
            )
        )
    }
}
