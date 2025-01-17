//
//  PasswordView.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 15/01/25.
//
import Foundation
import UIKit

class PasswordView: UIView {
    
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.text = "Criar Conta"
        label.textAlignment = .center
        label.textColor = .black
        label.font = label.font.withSize(18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var startLabel : UILabel = {
        let label = UILabel()
        label.text = "Agora..."
        label.textColor = .gray
        label.font = label.font.withSize(26)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var passwordLabel : UILabel = {
        let label = UILabel()
        label.text = "Crie uma senha"
        label.textColor = .black
        label.font = label.font.withSize(26)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Senha"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .emailAddress
        textField.autocorrectionType = .no
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        return textField
    }()
    
    lazy var warningLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Sua senha deve ter pelo menos 8 caracteres"
        return label
    }()
    
    lazy var PasscontinueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continuar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.isEnabled = false
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    private func setupUI() {
        backgroundColor = .white
        addingSubviews()
        setupConstraints()
    }
    
    private func addingSubviews() {
        addSubview(topLabel)
        addSubview(startLabel)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(warningLabel)
        addSubview(PasscontinueButton)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: -20),
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            startLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 40),
            startLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            startLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            passwordLabel.topAnchor.constraint(equalTo: startLabel.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            warningLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            warningLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            warningLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            warningLabel.heightAnchor.constraint(equalToConstant: 18),
            
            PasscontinueButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            PasscontinueButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            PasscontinueButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            PasscontinueButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }
}
