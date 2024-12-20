//
//  SplashViewCoordinator.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 19/12/24.
//

import Foundation
import UIKit

class SplashViewCoordinator: SplashViewDelegate  {
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
    
    func navigateToHome() {
        let welcomeViewController = WelcomeViewController()
        navigationController?.setViewControllers([welcomeViewController], animated: true)
    }
}
