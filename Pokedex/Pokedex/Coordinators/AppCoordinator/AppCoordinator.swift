//
//  SplashViewCoordinator.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 19/12/24.
//

import Foundation
import UIKit

class AppCoordinator {
    private var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() -> UINavigationController? {
        let startViewController = SplashViewController()
        startViewController.delegate = self
        navigationController?.setViewControllers([startViewController], animated: false)
        return navigationController
    }
}

extension AppCoordinator: SplashViewDelegate {
    func navigateToHome() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.delegate = self
        navigationController?.setViewControllers([welcomeViewController], animated: true)
    }
}

extension AppCoordinator: WelcomeViewDelegate {
    func navigateToLoginMethod() {
        let loginMethod = LoginMethodViewController()
        loginMethod.delegate = self
        navigationController?.setViewControllers([loginMethod], animated: true)
    }
}

extension AppCoordinator: LoginMethodDelegate {
    func createAccount() {
        let emailView = EmailViewController()
        emailView.delegate = self
        navigationController?.setViewControllers([emailView], animated: true)
    }
    
    func login() {
        
    }
}

extension AppCoordinator: EmailViewDelegate {
    func navigateToPassword(email: String) {
        let passwordViewController = PasswordViewController()
        passwordViewController.email = email
        navigationController?.setViewControllers([passwordViewController], animated: true)
    }
    
    
}

