//
//  ProfilePresenterTests.swift
//  TweetTests
//
//  Created by JeongminKim on 2022/03/23.
//

import XCTest
@testable import Tweet

class ProfilePresenterTests: XCTestCase {
    var sut: ProfilePresenter!
    var viewController: MockProfileViewController!
    
    override func setUp() {
        super.setUp()
        viewController = MockProfileViewController()
        sut = ProfilePresenter(viewController: viewController)
    }
    
    override func tearDown() {
        sut = nil
        viewController = nil
        super.tearDown()
    }
    
    func test_viewDidLoad가_요청될때() {
        sut.viewDidLoad()
        XCTAssertTrue(viewController.isCalledSetupViews)
        XCTAssertTrue(viewController.isCalledSetViews)
    }
    
    func test_didTapSaveButton이_요청될때_name이_없으면() {
        sut.didTapSaveButton(name: nil, account: "account")
        XCTAssertTrue(viewController.isCalledShowToast)
        XCTAssertFalse(viewController.isCalledEndEditing)
        XCTAssertFalse(viewController.isCalledSetViews)
    }
    
    func test_didTapSaveButton이_요청될때_account가_없으면() {
        sut.didTapSaveButton(name: "name", account: nil)
        XCTAssertTrue(viewController.isCalledShowToast)
        XCTAssertFalse(viewController.isCalledEndEditing)
        XCTAssertFalse(viewController.isCalledSetViews)
    }
    
    func test_didTapSaveButton이_요청될때_아무것도_없으면() {
        sut.didTapSaveButton(name: nil, account: nil)
        XCTAssertTrue(viewController.isCalledShowToast)
        XCTAssertFalse(viewController.isCalledEndEditing)
        XCTAssertFalse(viewController.isCalledSetViews)
    }
    
    func test_didTapSaveButton이_요청될때_내용이_있으면() {
        sut.didTapSaveButton(name: "name", account: "account")
        XCTAssertFalse(viewController.isCalledShowToast)
        XCTAssertTrue(viewController.isCalledEndEditing)
        XCTAssertTrue(viewController.isCalledSetViews)
    }
}
