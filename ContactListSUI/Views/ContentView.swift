//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Андрей Парчуков on 24.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            
            ContactListDetailedView(contacts: contacts)
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
