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
    var contactPhoneNumber: String
    
    static let contacts: [Contacts] = [
        Contacts(contactName: "Mary", contactSection: .work, contactImageName: .woman, contactPhoneNumber: "(555) 555-1234"),
        Contacts(contactName: "James", contactSection: .bookGroup, contactImageName: .man, contactPhoneNumber: "(773) 242-8449"),
        Contacts(contactName: "Patricia", contactSection: .danceClass, contactImageName: .woman, contactPhoneNumber: "(222) 533-2344"),
        Contacts(contactName: "Jennifer", contactSection: .family, contactImageName: .woman, contactPhoneNumber: "(345) 233-3453"),
        Contacts(contactName: "Robert", contactSection: .friend, contactImageName: .man, contactPhoneNumber: "(234) 333-2344"),
        Contacts(contactName: "Linda", contactSection: .danceClass, contactImageName: .woman, contactPhoneNumber: "(567) 867-4345"),
        Contacts(contactName: "Elizabeth", contactSection: .work, contactImageName: .woman, contactPhoneNumber: "(876) 345-2345"),
        Contacts(contactName: "Michael", contactSection: .family, contactImageName: .man, contactPhoneNumber: "(342) 543-7533"),
        Contacts(contactName: "David", contactSection: .danceClass, contactImageName: .man, contactPhoneNumber: "(742) 677-5432"),
        Contacts(contactName: "Barbara", contactSection: .work, contactImageName: .woman, contactPhoneNumber: "(342) 543-7533"),
        Contacts(contactName: "William", contactSection: .family, contactImageName: .man, contactPhoneNumber: "(375) 778-3456"),
        Contacts(contactName: "Richard", contactSection: .friend, contactImageName: .man, contactPhoneNumber: "(765) 643-643"),
        Contacts(contactName: "Susan", contactSection: .family, contactImageName: .woman, contactPhoneNumber: "(655) 556-9007"),
        Contacts(contactName: "Jessica", contactSection: .work, contactImageName: .woman, contactPhoneNumber: "(456) 987-568"),
        Contacts(contactName: "Joseph", contactSection: .bookGroup, contactImageName: .man, contactPhoneNumber: "(643) 556-9665"),
        Contacts(contactName: "Sarah", contactSection: .family, contactImageName: .woman, contactPhoneNumber: "(567) 453-4567"),
        Contacts(contactName: "Thomas", contactSection: .danceClass, contactImageName: .man, contactPhoneNumber: "(900) 333-5677"),
        Contacts(contactName: "Karen", contactSection: .friend, contactImageName: .woman, contactPhoneNumber: "(098) 223-6674"),
        Contacts(contactName: "Christopher", contactSection: .bookGroup, contactImageName: .man, contactPhoneNumber: "(112) 223-8643"),
        Contacts(contactName: "Lisa", contactSection: .work, contactImageName: .woman, contactPhoneNumber: "(145) 223-9603"),
        Contacts(contactName: "Charles", contactSection: .family, contactImageName: .man, contactPhoneNumber: "(332) 133-6899"),
        Contacts(contactName: "Nancy", contactSection: .danceClass, contactImageName: .woman, contactPhoneNumber: "(101) 223-0099"),
        Contacts(contactName: "Daniel", contactSection: .family, contactImageName: .man, contactPhoneNumber: "(099) 122-0303"),
        Contacts(contactName: "Matthew", contactSection: .work, contactImageName: .man, contactPhoneNumber: "(002) 130-2990"),
        Contacts(contactName: "Betty", contactSection: .bookGroup, contactImageName: .woman, contactPhoneNumber: "(223) 992-1120"),
        Contacts(contactName: "Sandra", contactSection: .friend, contactImageName: .woman, contactPhoneNumber: "(331) 002-9992"),
        Contacts(contactName: "Anthony", contactSection: .family, contactImageName: .man, contactPhoneNumber: "(222) 299-0022"),
        Contacts(contactName: "John", contactSection: .work, contactImageName: .man, contactPhoneNumber: "(929) 322-0039")
    ]

}






