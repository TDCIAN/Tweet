//
//  WritePresenter.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/23.
//

import Foundation
import UIKit

protocol WriteProtocol: AnyObject {
    func setupViews()
    func dismiss()
}

final class WritePresenter: NSObject {
    private weak var viewController: WriteProtocol?
    private let userDeafultsManager: UserDefaultsManagerProtocol
    
    init(
        viewController: WriteProtocol,
        userDefaultsManager: UserDefaultsManagerProtocol = UserDefaultsManager()
    ) {
        self.viewController = viewController
        self.userDeafultsManager = userDefaultsManager
    }
    
    func viewDidLoad() {
        viewController?.setupViews()
    }
    
    func didTapLeftBarButtonItem() {
        viewController?.dismiss()
    }
    
    func didTapRightBarButtonItem(text: String) {
        let tweet = Tweet(user: User.shared, contents: text)
        userDeafultsManager.setTweet(tweet)
        viewController?.dismiss()
    }
}
