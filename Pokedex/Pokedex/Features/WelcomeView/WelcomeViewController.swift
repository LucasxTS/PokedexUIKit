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
    weak var delegate: WelcomeViewDelegate?
    override func loadView() {
        super.loadView()
        view = welcomeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        welcomeView.continueButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        self.delegate?.navigateToLoginMethod()
        print("clicado")
    }
    
}
    
