//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Андрей Парчуков on 24.09.2022.
//

import SwiftUI

struct ContactListView: View {
    
    @EnvironmentObject private var personManager: PersonManager
    
    var body: some View {
        List(personManager.persons) {
            NavigationLink($0.fullName, destination: PersonDetails(person: $0))
        }
        .listStyle(.plain)
    }
    
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
            .environmentObject(PersonManager())
    }
}
