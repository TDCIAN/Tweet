//
//  FeedViewController.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/22.
//

import UIKit
import SnapKit
import Floaty

final class FeedViewController: UIViewController {
    private lazy var presenter = FeedPresenter(viewController: self)
    
    private lazy var writeButton: Floaty = {
        let floaty = Floaty(size: 50.0)
        floaty.sticky = true
        floaty.handleFirstItemDirectly = true
        floaty.addItem(title: "") { [weak self] _ in
            self?.presenter.didTapWriteButton()
        }
        floaty.buttonImage = Icon.write.image?.withTintColor(.white, renderingMode: .alwaysOriginal)
        return floaty
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = presenter
        tableView.delegate = presenter
        tableView.register(
            FeedTableViewCell.self,
            forCellReuseIdentifier: FeedTableViewCell.identifier
        )
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.viewWillAppear()
    }
}

extension FeedViewController: FeedProtocol {
    func setupView() {
        navigationItem.title = "Feed"
        
        [tableView, writeButton].forEach {
            view.addSubview($0)
        }
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        writeButton.paddingY = 100.0
    }
    
    func reloadTableView() {
        tableView.reloadData()
    }
    
    func moveToTweetViewController(with tweet: Tweet) {
        let tweetViewController = TweetViewController(tweet: tweet)
        navigationController?.pushViewController(tweetViewController, animated: true)
    }
    
    func moveToWriteViewController() {
        let writeViewController = UINavigationController(rootViewController: WriteViewController())
        writeViewController.modalPresentationStyle = .fullScreen
        present(writeViewController, animated: true)
    }
}
