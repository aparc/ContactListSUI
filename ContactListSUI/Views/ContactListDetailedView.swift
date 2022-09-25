//
//  ContactListDetailedView.swift
//  ContactListSUI
//
//  Created by Андрей Парчуков on 24.09.2022.
//

import SwiftUI

struct ContactListDetailedView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
                .textCase(.none)
            }
            .navigationTitle("Contact List")
        }
    }
    
}

struct ContactListDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListDetailedView(contacts: Person.getPersons())
    }
}
