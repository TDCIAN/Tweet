//
//  FeedPresenter.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/22.
//

import Foundation

protocol FeedProtocol: AnyObject {
    
}

final class FeedPresenter {
    private weak var viewController: FeedProtocol?
    
    init(viewController: FeedProtocol) {
        self.viewController = viewController
    }
}
