//
//  PersonDetails.swift
//  ContactListSUI
//
//  Created by Андрей Парчуков on 24.09.2022.
//

import SwiftUI

struct PersonDetails: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                    .padding()
                Spacer()
            }
            
            Row(systemIcon: "phone", label: person.phone)
            Row(systemIcon: "tray", label: person.email)
        }
        .listStyle(.grouped)
        .navigationTitle(person.fullName)
    }
    
}

struct Row: View {
    
    let systemIcon: String
    let label: String
    
    var body: some View {
        HStack {
            Image(systemName: systemIcon).foregroundColor(.blue)
            Text(label)
            Spacer()
        }
    }
    
}

struct PersonDetails_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetails(person: Person(firstName: "Qwe", surname: "Rty", email: "123", phone: "123"))
    }
}
