//
//  PokedexFlowController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 18/12/24.
//

import Foundation
import UIKit

class PokedexFlowCoordinator  {
    
    private var navigationController: UINavigationController?
    
    
    public init() {
        
    }
    
    func start() -> UINavigationController? {
        //let contentView = SplashView()
        let startViewController = SplashViewController()
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController
    }
    
}
