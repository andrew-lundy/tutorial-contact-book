//
//  DataService.swift
//  Simple Contacts
//
//  Created by Andrew Lundy on 4/28/19.
//  Copyright © 2019 Andrew Lundy. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    var contacts: [Contact] = [
        Contact(name: "Billy", phone: "777-777-7777", email: "billy@facebook.com", company: "Facebook"),
        Contact(name: "Steve", phone: "888-888-8888", email: "steve@email.com", company: "Apple")
    ]
}
