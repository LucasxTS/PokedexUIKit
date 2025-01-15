//
//  CreateAccountView.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 09/01/25.
//

import Foundation
import UIKit

class EmailView: UIView {
    
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
        label.text = "Vamos começar!"
        label.textColor = .gray
        label.font = label.font.withSize(26)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var emailLabel : UILabel = {
        let label = UILabel()
        label.text = "Qual é o seu email?"
        label.textColor = .black
        label.font = label.font.withSize(26)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .emailAddress
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        return textField
    }()
    
    lazy var warningLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = label.font.withSize(12)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Use um endereço de e-mail válido."
        return label
    }()
    
    lazy var continueButton: UIButton = {
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
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(warningLabel)
        addSubview(continueButton)
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
            
            emailLabel.topAnchor.constraint(equalTo: startLabel.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            warningLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            warningLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            warningLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            warningLabel.heightAnchor.constraint(equalToConstant: 18),
            
            continueButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            continueButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            continueButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            continueButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }
}
