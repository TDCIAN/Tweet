//
//  SceneDelegate.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(rootViewController: TabBarViewController())
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()
    }
}
