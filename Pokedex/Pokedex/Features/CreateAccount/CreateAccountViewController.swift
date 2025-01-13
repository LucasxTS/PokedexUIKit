//
//  CreateAccountViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 13/01/25.
//

import Foundation
import UIKit

class CreateAccountViewController: UIViewController {
    
    private let createAccountView = CreateAccountView()
    
    override func loadView() {
        super.loadView()
        view = createAccountView
    }
}
