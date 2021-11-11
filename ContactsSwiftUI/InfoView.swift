//
//  InfoView.swift
//  ContactsSwiftUI
//
//  Created by Анатолий Миронов on 11.11.2021.
//

import SwiftUI

struct InfoView: View {
    let phone: String
    let email: String
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text(phone)
        }
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            Text(email)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(phone: "8(999)356-56-56", email: "qwerty@kk.ru")
    }
}
