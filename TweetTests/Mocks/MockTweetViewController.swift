//
//  MockTweetViewController.swift
//  TweetTests
//
//  Created by JeongminKim on 2022/03/23.
//

import Foundation

@testable import Tweet

final class MockTweetViewController: TweetProtocol {
    var isCalledSetViews = false
    var isCalledSetupViews = false
    func setViews(tweet: Tweet) {
        isCalledSetViews = true
    }
    
    func setupViews() {
        isCalledSetupViews = true
    }
}
