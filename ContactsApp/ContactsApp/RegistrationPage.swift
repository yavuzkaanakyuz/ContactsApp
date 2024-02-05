//
//  RegistrationPage.swift
//  ContactsApp
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct RegistrationPage: View {
    @State private var personName = ""
    @State private var phoneNumber = ""
    
    func register(name: String, number: String) {
        print("Person: \(name)")
        print("Number: \(number)")
    }
    
    var body: some View {
        VStack(spacing: 90) {
            TextField("Person Name", text: $personName)
                .textFieldStyle(.roundedBorder)
            
            TextField("Phone Number", text: $phoneNumber)
                .textFieldStyle(.roundedBorder)
            
            Button("Register") {
                register(name: personName, number: phoneNumber)
            }
            .padding()
            .background(.blue)
            .cornerRadius(20)
            .foregroundColor(.white)
            .shadow(radius: 5)
                
        }
        .padding()
        .navigationTitle("Registration")
    }
}

#Preview {
    RegistrationPage()
}
