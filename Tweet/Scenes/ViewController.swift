//
//  ViewController.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let manager = UserDefaultsManager()
        manager.setTweet(Tweet(user: User.shared, contents: "안녕하세요~"))
        
        print("겟트윗 - \(manager.getTweet())")
    }

}
