//
//  ProfilePresenter.swift
//  Tweet
//
//  Created by JeongminKim on 2022/03/23.
//

import Foundation

protocol ProfileProtocol: AnyObject {
    func setupViews()
    func setViews(with name: String, account: String)
    func endEditing()
}

final class ProfilePresenter {
    private weak var viewController: ProfileProtocol?
    private var user: User {
        get {
            return User.shared
        }
        set {
            User.shared = newValue
        }
    }
    
    init(viewController: ProfileProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController?.setupViews()
        viewController?.setViews(with: user.name, account: user.account)
    }
    
    func didTapSaveButton(name: String?, account: String?) {
        if name == nil || name == "" || account == nil || account == "" {
            return
        }
        
        viewController?.endEditing()
        
        if let name = name {
            user.name = name
        }
        
        if let account = account {
            user.account = account
        }
        
        viewController?.setViews(with: user.name, account: user.account)
    }
}
