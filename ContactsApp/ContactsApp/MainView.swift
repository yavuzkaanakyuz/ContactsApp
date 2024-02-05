//
//  ContentView.swift
//  ContactsApp
//
//  Created by Yavuz Kaan Akyüz on 4.02.2024.
//

import SwiftUI

struct MainView: View {
    
    @State private var contactList = [Contacts]()
    @State private var searchword = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contactList) { index in
                    NavigationLink(destination: PersonDetailView(contact: index)) {
                        ContactsLine(person: index)
                    }
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                    Button(role: .destructive) {
                        print("Destructive")
                    } label: {
                        Image(systemName: "trash")
                    }
                }
            }
            .navigationTitle("Contacts")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: RegistrationPage()) {
                        Image(systemName: "plus")
                    }
                }
            }
            .onAppear {
                var list = [Contacts]()
                let c1 = Contacts(personID: 1, name: "Ashley", number: "111")
                let c2 = Contacts(personID: 2, name: "Nick", number: "222")
                let c3 = Contacts(personID: 3, name: "Joshua", number: "333")
                list.append(c1)
                list.append(c2)
                list.append(c3)
                contactList = list
            }
        }
        .searchable(text: $searchword, prompt: "Search")
        .onChange(of: searchword) {index in
            print("Search: \(index)")
        }
    }
}

#Preview {
    MainView()
}
