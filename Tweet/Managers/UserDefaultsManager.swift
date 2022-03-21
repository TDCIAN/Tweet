//
//  UserDefaultsManager.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/22.
//

import Foundation

protocol UserDefaultsManagerProtocol {
    
}

struct UserDefaultsManager: UserDefaultsManagerProtocol {
    enum Key: String {
        case tweet = "tweet"
    }
    
    var keyValue = Key.tweet.rawValue
}
