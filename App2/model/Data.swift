//
//  Data.swift
//  App2
//
//  Created by Vương Toàn Bắc on 5/15/20.
//  Copyright © 2020 VTB. All rights reserved.
//

import Foundation

struct Data:Codable {
    let id:String
    let name:String
    let avatar:String
    let email:String
    
    init(id:String , name:String , avatar:String , email:String) {
        self.id = id
        self.name = name
        self.avatar = avatar
        self.email = email
    }
}
