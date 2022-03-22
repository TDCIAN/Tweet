//
//  FeedViewController.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/22.
//

import UIKit

final class FeedViewController: UIViewController {
    private lazy var presenter = FeedPresenter(viewController: self)
}

extension FeedViewController: FeedProtocol {
    
}
