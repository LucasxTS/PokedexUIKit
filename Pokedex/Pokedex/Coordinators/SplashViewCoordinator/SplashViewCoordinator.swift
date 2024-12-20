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

    
    func start() -> UINavigationController? {
        //let contentView = SplashView()
        let startViewController = SplashViewController()
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController
    }
    
    func navigateToHome() {
        
    }
}
