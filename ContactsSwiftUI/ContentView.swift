//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Анатолий Миронов on 11.11.2021.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersonsList()
    
    var body: some View {
        NavigationView {
            TabView {
                Contacts(persons: persons)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                Numbers(persons: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
