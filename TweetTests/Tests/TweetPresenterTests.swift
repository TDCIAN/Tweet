//
//  TweetPresenterTests.swift
//  TweetTests
//
//  Created by JeongminKim on 2022/03/23.
//

import XCTest
@testable import Tweet

class TweetPresenterTests: XCTestCase {
    var sut: TweetPresenter!
    
    var viewController: MockTweetViewController!
    var tweet: Tweet!
    
    override func setUp() {
        super.setUp()
        
        viewController = MockTweetViewController()
        tweet = Tweet(user: User.shared, contents: "테스트컨텐츠")
        sut = TweetPresenter(
            viewController: viewController,
            tweet: tweet
        )
    }
    
    override func tearDown() {
        sut = nil
        
        viewController = nil
        tweet = nil
        
        super.tearDown()
    }
        
    func test_viewDidLoad가_요청되면() {
        sut.viewDidLoad()
        
        XCTAssertTrue(viewController.isCalledSetViews)
        XCTAssertTrue(viewController.isCalledSetupViews)
    }
    
}
