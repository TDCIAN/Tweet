//
//  WritePresenterTests.swift
//  TweetTests
//
//  Created by JeongminKim on 2022/03/23.
//

import XCTest
@testable import Tweet

class WritePresenterTests: XCTestCase {
    var sut: WritePresenter!
    
    var viewController: MockWriteViewController!
    var userDefaultsManager: MockUserDefaultsManager!
    
    override func setUp() {
        super.setUp()
        
        viewController = MockWriteViewController()
        userDefaultsManager = MockUserDefaultsManager()
        
        sut = WritePresenter(
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
    
    func test_viewDidLoad가_호출되면() {
        sut.viewDidLoad()
        XCTAssertTrue(viewController.isCalledSetupViews)
    }
    
    func test_didTapLeftBarButtonItem이_호출되면() {
        sut.didTapLeftBarButtonItem()
        XCTAssertTrue(viewController.isCalledDismiss)
    }
    
    func test_didTapRightBarButtonItem이_호출되면() {
        sut.didTapRightBarButtonItem(text: "")
        XCTAssertTrue(userDefaultsManager.isCalledSetTweet)
        XCTAssertTrue(viewController.isCalledDismiss)
    }
}
