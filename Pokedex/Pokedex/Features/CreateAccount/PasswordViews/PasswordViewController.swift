//
//  PasswordViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 15/01/25.
//
import Foundation
import UIKit

class PasswordViewController: UIViewController {
    private let passwordView = PasswordView()
    var email: String = ""
    
    override func loadView() {
        super.loadView()
        view = passwordView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(email)
    }
}
