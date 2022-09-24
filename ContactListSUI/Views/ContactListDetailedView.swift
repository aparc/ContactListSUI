//
//  ContactListDetailedView.swift
//  ContactListSUI
//
//  Created by Андрей Парчуков on 24.09.2022.
//

import SwiftUI

struct ContactListDetailedView: View {
    
    @EnvironmentObject private var personManager: PersonManager
    
    var body: some View {
        List {
            ForEach(personManager.persons) { person in
                Section(person.fullName) {
                    Row(systemIcon: "phone", label: person.phone)
                    Row(systemIcon: "tray", label: person.email)
                }
                .textCase(.none)
            }
        }
    }
    
}

struct ContactListDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListDetailedView()
            .environmentObject(PersonManager())
    }
}
