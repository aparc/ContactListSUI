//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Андрей Парчуков on 24.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            NavigationView {
                ContactListView().navigationTitle("Contact List")
            }
            .tabItem {
                Label("Contacts", systemImage: "person.3.fill")
            }
            
            NavigationView {
                ContactListDetailedView().navigationTitle("Contact List")
            }
            .tabItem {
                Label("Numbers", systemImage: "phone.fill")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PersonManager())
    }
}
