//
//  PersonManager.swift
//  ContactListSUI
//
//  Created by Андрей Парчуков on 24.09.2022.
//

import Foundation

final class PersonManager: ObservableObject {
    let persons = Person.getPersons()
}
