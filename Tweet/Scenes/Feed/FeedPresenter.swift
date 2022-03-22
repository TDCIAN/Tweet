//
//  FeedPresenter.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/22.
//

import UIKit

protocol FeedProtocol: AnyObject {
    func setupView()
}

final class FeedPresenter: NSObject {
    private weak var viewController: FeedProtocol?
    
    init(viewController: FeedProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController?.setupView()
    }
}

extension FeedPresenter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension FeedPresenter: UITableViewDelegate {
    
}
