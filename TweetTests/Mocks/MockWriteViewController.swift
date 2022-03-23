//
//  MockWriteViewController.swift
//  TweetTests
//
//  Created by JeongminKim on 2022/03/23.
//

import Foundation

@testable import Tweet

final class MockWriteViewController: WriteProtocol {
    var isCalledSetupViews = false
    var isCalledDismiss = false
    
    func setupViews() {
        isCalledSetupViews = true
    }
    
    func dismiss() {
        isCalledDismiss = true
    }
}
