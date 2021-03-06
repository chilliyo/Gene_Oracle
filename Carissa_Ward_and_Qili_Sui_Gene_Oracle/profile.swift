//
//  profile.swift
//  Carissa_Ward_and_Qili_Sui_Gene_Oracle
//
//  Created by Chilli on 3/6/17.
//  Copyright © 2017 DePaul. All rights reserved.
//

import Foundation

class Profile {
    
    enum `Type`: String {
        case basic = "basic"
    }
    
    var type:       Type = .basic
    
    var name:       String
    var bloodType:  String
    var scd:        Bool
    var hd:         Bool
    var cf:         Bool
    
    init(name: String, bloodType: String, scd: Bool, hd: Bool, cf:Bool) {
        self.name = name
        self.bloodType = bloodType
        self.scd = scd
        self.hd = hd
        self.cf = cf
    }
    
}

var profiles = [Profile]()
