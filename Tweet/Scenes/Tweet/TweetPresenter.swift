//
//  TweetPresenter.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/23.
//

import Foundation

protocol TweetProtocol: AnyObject {
    func setViews(tweet: Tweet)
    func setupViews()
}

final class TweetPresenter {
    private weak var viewController: TweetProtocol?
    private let tweet: Tweet
    
    init(
        viewController: TweetProtocol,
        tweet: Tweet
    ) {
        self.viewController = viewController
        self.tweet = tweet
    }
    
    func viewDidLoad() {
        viewController?.setViews(tweet: tweet)
        viewController?.setupViews()
    }
}
