//
//  PasswordViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 15/01/25.
//
import Foundation
import UIKit

class PasswordViewController: UIViewController, UITextFieldDelegate {
    private let passwordView = PasswordView()
    private var password: String = ""
    var email: String = ""
    
    override func loadView() {
        super.loadView()
        setupUI()
    }
    
    private func setupUI() {
        view = passwordView
        passwordView.passwordTextField.delegate = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = passwordView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        passwordView.passwordTextField.becomeFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        password = textField.text ?? ""
        if (password.count >= 8) {
            passwordView.PasscontinueButton.isEnabled = true
            passwordView.PasscontinueButton.backgroundColor = .blue
       }
    }
}
