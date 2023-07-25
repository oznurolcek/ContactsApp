//
//  Contacts.swift
//  ContactsApp
//
//  Created by Öznur Ölçek on 24.07.2023.
//

import Foundation

enum Sections: CaseIterable {
    case allContacts
    case family
    case friend
    case work
    case danceClass
    case bookGroup
    
    var sections: String {
        switch self {
        case .allContacts:
            return "All Contacts"
        case .family:
            return "Family"
        case .friend:
            return "Friend"
        case .work:
            return "Work"
        case .danceClass:
            return "Dance Class"
        case .bookGroup:
            return "Book Group"
        }
    }
}

enum ImageName: CaseIterable {
    case man
    case woman
    
    var imageName: String {
        switch self {
        case .woman:
            return "woman"
        case .man:
            return "man"
        }
    }
}

struct Contacts {
    var contactName: String
    var contactSection: Sections
    var contactImageName: ImageName
    
    static let contacts: [Contacts] = [
        Contacts(contactName: "Mary", contactSection: .work, contactImageName: .woman),
        Contacts(contactName: "James", contactSection: .bookGroup, contactImageName: .man),
        Contacts(contactName: "Patricia", contactSection: .danceClass, contactImageName: .woman),
        Contacts(contactName: "Jennifer", contactSection: .family, contactImageName: .woman),
        Contacts(contactName: "Robert", contactSection: .friend, contactImageName: .man),
        Contacts(contactName: "Linda", contactSection: .danceClass, contactImageName: .woman),
        Contacts(contactName: "Elizabeth", contactSection: .work, contactImageName: .woman),
        Contacts(contactName: "Michael", contactSection: .family, contactImageName: .man),
        Contacts(contactName: "David", contactSection: .danceClass, contactImageName: .man),
        Contacts(contactName: "Barbara", contactSection: .work, contactImageName: .woman),
        Contacts(contactName: "William", contactSection: .family, contactImageName: .man),
        Contacts(contactName: "Richard", contactSection: .friend, contactImageName: .man),
        Contacts(contactName: "Susan", contactSection: .family, contactImageName: .woman),
        Contacts(contactName: "Jessica", contactSection: .work, contactImageName: .woman),
        Contacts(contactName: "Joseph", contactSection: .bookGroup, contactImageName: .man),
        Contacts(contactName: "Sarah", contactSection: .family, contactImageName: .woman),
        Contacts(contactName: "Thomas", contactSection: .danceClass, contactImageName: .man),
        Contacts(contactName: "Karen", contactSection: .friend, contactImageName: .woman),
        Contacts(contactName: "Christopher", contactSection: .bookGroup, contactImageName: .man),
        Contacts(contactName: "Lisa", contactSection: .work, contactImageName: .woman),
        Contacts(contactName: "Charles", contactSection: .family, contactImageName: .man),
        Contacts(contactName: "Nancy", contactSection: .danceClass, contactImageName: .woman),
        Contacts(contactName: "Daniel", contactSection: .family, contactImageName: .man),
        Contacts(contactName: "Matthew", contactSection: .work, contactImageName: .man),
        Contacts(contactName: "Betty", contactSection: .bookGroup, contactImageName: .woman),
        Contacts(contactName: "Sandra", contactSection: .friend, contactImageName: .woman),
        Contacts(contactName: "Anthony", contactSection: .family, contactImageName: .man),
        Contacts(contactName: "John", contactSection: .work, contactImageName: .man)
    ]

}






