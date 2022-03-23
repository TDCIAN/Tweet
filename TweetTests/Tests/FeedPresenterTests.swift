//
//  TweetTests.swift
//  TweetTests
//
//  Created by JeongminKim on 2022/03/21.
//

import XCTest
@testable import Tweet

class FeedPresenterTests: XCTestCase {
    var sut: FeedPresenter!
    
    var viewController: MockFeedViewController!
    var userDefaultsManager: MockUserDefaultsManager!
    
    override func setUp() {
        super.setUp()
        
        viewController = MockFeedViewController()
        userDefaultsManager = MockUserDefaultsManager()
        
        sut = FeedPresenter(
            viewController: viewController,
            userDefaultsManager: userDefaultsManager
        )
    }
    
    override func tearDown() {
        sut = nil
        
        userDefaultsManager = nil
        viewController = nil
        
        super.tearDown()
    }
    
    func test_viewDidLoad가_요청되면() {
        sut.viewDidLoad()
        
        XCTAssertTrue(viewController.isCalledSetupView)
    }
    
    func test_viewWillAppear가_요청되면() {
        sut.viewWillAppear()
        XCTAssertTrue(userDefaultsManager.isCalledGetTweet)
        XCTAssertTrue(viewController.isCalledReloadTableView)
    }
    
    func test_didTapWriteButton가_요청되면() {
        sut.didTapWriteButton()
        XCTAssertTrue(viewController.isCalledMoveToWriteViewController)
    }
}




