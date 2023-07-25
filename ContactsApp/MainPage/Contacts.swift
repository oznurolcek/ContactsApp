//
//  Contacts.swift
//  ContactsApp
//
//  Created by Öznur Ölçek on 24.07.2023.
//

import Foundation

enum Sections {
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

enum ImageName {
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

class Contacts {
    var contactName: String?
    var contactSection: Sections?
    var contactImageName: ImageName?
    
    init() {
        
    }
    
    init(contactName: String, contactSection: Sections, contactImageName: ImageName) {
        self.contactName = contactName
        self.contactImageName = contactImageName
        self.contactSection = contactSection
    }
}

let contact1 = Contacts(contactName: "Mary", contactSection: .work, contactImageName: .woman)
let contact2 = Contacts(contactName: "James", contactSection: .bookGroup, contactImageName: .man)
let contact3 = Contacts(contactName: "Patricia", contactSection: .danceClass, contactImageName: .woman)
let contact4 = Contacts(contactName: "Jennifer", contactSection: .family, contactImageName: .woman)
let contact5 = Contacts(contactName: "Robert", contactSection: .friend, contactImageName: .man)
let contact6 = Contacts(contactName: "Linda", contactSection: .danceClass, contactImageName: .woman)
let contact7 = Contacts(contactName: "Elizabeth", contactSection: .work, contactImageName: .woman)
let contact8 = Contacts(contactName: "Michael", contactSection: .family, contactImageName: .man)
let contact9 = Contacts(contactName: "David", contactSection: .danceClass, contactImageName: .man)
let contact10 = Contacts(contactName: "Barbara", contactSection: .work, contactImageName: .woman)
let contact11 = Contacts(contactName: "William", contactSection: .family, contactImageName: .man)
let contact12 = Contacts(contactName: "Richard", contactSection: .friend, contactImageName: .man)
let contact13 = Contacts(contactName: "Susan", contactSection: .family, contactImageName: .woman)
let contact14 = Contacts(contactName: "Jessica", contactSection: .work, contactImageName: .woman)
let contact15 = Contacts(contactName: "Joseph", contactSection: .bookGroup, contactImageName: .man)
let contact16 = Contacts(contactName: "Sarah", contactSection: .family, contactImageName: .woman)
let contact17 = Contacts(contactName: "Thomas", contactSection: .danceClass, contactImageName: .man)
let contact18 = Contacts(contactName: "Karen", contactSection: .friend, contactImageName: .woman)
let contact19 = Contacts(contactName: "Christopher", contactSection: .bookGroup, contactImageName: .man)
let contact20 = Contacts(contactName: "Lisa", contactSection: .work, contactImageName: .woman)
let contact21 = Contacts(contactName: "Charles", contactSection: .family, contactImageName: .man)
let contact22 = Contacts(contactName: "Nancy", contactSection: .danceClass, contactImageName: .woman)
let contact23 = Contacts(contactName: "Daniel", contactSection: .family, contactImageName: .man)
let contact24 = Contacts(contactName: "Matthew", contactSection: .work, contactImageName: .man)
let contact25 = Contacts(contactName: "Betty", contactSection: .bookGroup, contactImageName: .woman)
let contact26 = Contacts(contactName: "Sandra", contactSection: .friend, contactImageName: .woman)
let contact27 = Contacts(contactName: "Anthony", contactSection: .family, contactImageName: .man)
let contact28 = Contacts(contactName: "John", contactSection: .work, contactImageName: .man)

let contacts: [Contacts] = [contact1, contact2, contact3, contact4, contact5, contact6, contact7,
                            contact8, contact9, contact10, contact11, contact12, contact13, contact14,
                            contact15, contact16, contact17, contact18, contact19, contact20, contact21,
                            contact22, contact23, contact24, contact25, contact26, contact27, contact28]




