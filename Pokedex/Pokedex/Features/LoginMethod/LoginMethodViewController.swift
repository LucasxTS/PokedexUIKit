//
//  LoginMethodViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 07/01/25.
//

import Foundation
import UIKit

class LoginMethodViewController: UIViewController {
    private let loginMethodView = LoginMethodView()
    
    weak var delegate: LoginMethodDelegate?
    
    override func loadView() {
        super.loadView()
        view = loginMethodView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseLoginMethod()
    }
    
    private func chooseLoginMethod() {
        loginMethodView.loginButton.addTarget(self, action: #selector(loginChoosed), for: .touchUpInside)
        loginMethodView.createAccount.addTarget(self, action: #selector(createAccount), for: .touchUpInside)
    }
    
    @objc private func loginChoosed() {
        delegate?.login()
    }
    
    @objc private func createAccount() {
        delegate?.createAccount()
    }
}
