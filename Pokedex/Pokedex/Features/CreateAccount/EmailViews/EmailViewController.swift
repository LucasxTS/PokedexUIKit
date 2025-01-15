//
//  CreateAccountViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 13/01/25.
//

import Foundation
import UIKit

class EmailViewController: UIViewController, UITextFieldDelegate {
    weak var delegate: EmailViewDelegate?
    private let createAccountView = EmailView()
    private var userEmail: String = ""
    
    override func loadView() {
        super.loadView()
        view = createAccountView
        createAccountView.emailTextField.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createAccountView.emailTextField.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAccountView.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("editando")
        print(userEmail)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        userEmail = textField.text ?? ""
        if (!userEmail.isEmpty) {
            createAccountView.continueButton.isEnabled = true
            createAccountView.continueButton.backgroundColor = .blue
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc private func continueButtonTapped() {
        delegate?.navigateToPassword(email: userEmail)
    }
    
}
