//
//  MockFeedViewController.swift
//  TweetTests
//
//  Created by JeongminKim on 2022/03/23.
//

import Foundation

@testable import Tweet

final class MockFeedViewController: FeedProtocol {
    var isCalledSetupView = false
    var isCalledReloadTableView = false
    var isCalledMoveToTweetViewController = false
    var isCalledMoveToWriteViewController = false
    
    func setupView() {
        isCalledSetupView = true
    }
    
    func reloadTableView() {
        isCalledReloadTableView = true
    }
    
    func moveToTweetViewController(with tweet: Tweet) {
        isCalledMoveToTweetViewController = true
    }
    
    func moveToWriteViewController() {
        isCalledMoveToWriteViewController = true
    }
}
