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
        navigationController?.setViewControllers([loginMethod], animated: true)
    }
}


