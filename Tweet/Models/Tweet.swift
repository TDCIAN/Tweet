//
//  Tweet.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/22.
//

import Foundation

struct Tweet: Codable {
    let user: User
    let contents: String
}
