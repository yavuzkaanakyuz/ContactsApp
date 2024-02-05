//
//  ContactsLine.swift
//  ContactsApp
//
//  Created by Yavuz Kaan Akyüz on 5.02.2024.
//

import SwiftUI

struct ContactsLine: View {
    var person = Contacts()
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(person.name!)
                .fontDesign(.rounded)
                .font(.system(size: 35))
            Text(person.number!)
                .fontDesign(.rounded)
                .font(.system(size: 20))
        }
    }
}

#Preview {
    ContactsLine()
}
