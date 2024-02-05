//
//  Contacts.swift
//  ContactsApp
//
//  Created by Yavuz Kaan Akyüz on 5.02.2024.
//

import SwiftUI

class Contacts: Identifiable {
    var personID: Int?
    var name: String?
    var number: String?
    
    init() {
        
    }
    
    init(personID: Int, name: String, number: String) {
        self.personID = personID
        self.name = name
        self.number = number
    }
}
