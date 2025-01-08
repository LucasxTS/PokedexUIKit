//
//  LoginMethodViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 07/01/25.
//

import Foundation
import UIKit

class LoginMethodViewController: UIViewController {
    private let loginMethodView = LoginMethodView()
    
    override func loadView() {
        super.loadView()
        view = loginMethodView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
