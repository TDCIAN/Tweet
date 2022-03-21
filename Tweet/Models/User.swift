//
//  User.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/22.
//

import Foundation

struct User: Codable {
    var name: String
    var account: String
    
    static var shared = User(name: "iOS개발왕", account:"ios_developer")
}
