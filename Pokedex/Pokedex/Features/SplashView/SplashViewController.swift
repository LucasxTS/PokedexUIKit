//
//  SplashViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 18/12/24.
//
import Foundation
import UIKit

class SplashViewController: UIViewController {
    
    weak var delegate: SplashViewDelegate?
    
    private let splashView = SplashView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = splashView
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
            self?.delegate?.navigateToHome()
        }
    }
}
