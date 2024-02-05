//
//  PersonDetailView.swift
//  ContactsApp
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct PersonDetailView: View {
    
    @State private var personName = ""
    @State private var phoneNumber = ""
    var contact = Contacts()
    
    
    func update(personID: Int,name: String, number: String) {
        print("Person ID: \(personID)")
        print("Person: \(name)")
        print("Number: \(number)")
    }
    
    var body: some View {
        VStack(spacing: 90) {
            TextField("Person Name", text: $personName)
                .textFieldStyle(.roundedBorder)
            
            TextField("Phone Number", text: $phoneNumber)
                .textFieldStyle(.roundedBorder)
            
            Button("Update") {
                update(personID: contact.personID!, name: personName, number: phoneNumber)
            }
            .padding()
            .background(.blue)
            .cornerRadius(20)
            .foregroundColor(.white)
            .shadow(radius: 5)
            
        }
        .padding()
        .navigationTitle("Person Detail")
        .onAppear {
            personName = contact.name!
            phoneNumber = contact.number!
        }
       
        
    }
        
}

#Preview {
    PersonDetailView()
}
