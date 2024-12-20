//
//  WelcomeViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 19/12/24.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    
    private let welcomeView = WelcomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = welcomeView
    }
}
