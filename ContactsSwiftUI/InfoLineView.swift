//
//  InfoLineView.swift
//  ContactsSwiftUI
//
//  Created by Анатолий Миронов on 14.11.2021.
//

import SwiftUI

struct InfoLineView: View {
    let systemPicture: String
    let colorOfPicture: Color
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: systemPicture)
                .foregroundColor(colorOfPicture)
            Text(text)
        }
    }
}

struct InfoLineView_Previews: PreviewProvider {
    static var previews: some View {
        InfoLineView(
            systemPicture: "phone",
            colorOfPicture: .blue,
            text: "8(999)356-56-56"
        )
    }
}
