//
//  TabBarViewController.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/21.
//

import UIKit

final class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarViewControllers: [UIViewController] = TabBarItem.allCases
            .map { tabCase in
                let viewController = tabCase.viewController
                viewController.tabBarItem = UITabBarItem(
                    title: tabCase.title,
                    image: tabCase.icon.default,
                    selectedImage: tabCase.icon.selected
                )
                return viewController
            }
        
        self.viewControllers = tabBarViewControllers
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
