//
//  SplashViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 18/12/24.
//
import Foundation
import UIKit

class SplashViewController: UIViewController {
    private let splashView = SplashView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = splashView
    }
}
