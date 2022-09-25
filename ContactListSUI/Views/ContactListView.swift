//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Андрей Парчуков on 24.09.2022.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) {
                NavigationLink($0.fullName, destination: PersonDetails(person: $0))
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
    
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getPersons())
    }
}
