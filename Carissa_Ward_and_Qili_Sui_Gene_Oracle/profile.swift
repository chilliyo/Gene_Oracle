//
//  profile.swift
//  Carissa_Ward_and_Qili_Sui_Gene_Oracle
//
//  Created by Chilli on 3/6/17.
//  Copyright © 2017 DePaul. All rights reserved.
//

import Foundation

let profiles = [
    
    profile(name: "Carissa Ward",
         type: .basic,
         shortDescription: "Born 1995"),
    
    profile(name: "Qili Sui",
            type: .basic,
            shortDescription: "Born 1994")
]

class profile {
    
    enum `Type`: String {
        case basic = "basic"
    }
    
    var name: String
    var type: Type
    var shortDescription: String
    
    init(name: String, type: Type, shortDescription: String) {
        self.name = name
        self.type = type
        self.shortDescription = shortDescription
    }
    
}
