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
            Form {
                HStack {
                    Spacer()
                    Image(systemName: person.photo)
                        .resizable()
                        .frame(width: 125, height: 125)
                        .foregroundColor(.blue)
                    Spacer()
                }
                .padding()
                
                InfoLineView(
                    systemPicture: "phone",
                    colorOfPicture: .blue,
                    text: person.phone
                )
                InfoLineView(
                    systemPicture: "tray",
                    colorOfPicture: .blue,
                    text: person.email
                )
            }
            .navigationTitle(person.fullName)
        }
    }
}

struct PersonDescription_Previews: PreviewProvider {
    static var previews: some View {
        PersonDescription(person: Person.getPersonsList().first!)
    }
}
