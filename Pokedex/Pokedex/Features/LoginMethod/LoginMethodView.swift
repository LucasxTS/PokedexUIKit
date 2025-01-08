//
//  Untitled.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 07/01/25.
//

import Foundation
import UIKit

class LoginMethodView: UIView {
    
    lazy var trainerImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "trainer3")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Está pronto para essa aventura?"
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Basta criar uma conta e começar a explorar o mundo dos Pokémon hoje!"
        label.font = label.font.withSize(14)
        label.textAlignment = .center
        label.textColor = .gray
        label.numberOfLines = 0
        return label
    }()
    
    lazy var createAccount: UIButton = {
        let button = UIButton()
        button.setTitle("Criar conta", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ja tenho uma conta", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = .white
        addSubview(trainerImage)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(loginButton)
        addSubview(createAccount)
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            trainerImage.topAnchor.constraint(equalTo: topAnchor, constant: 225),
            trainerImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            trainerImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            trainerImage.heightAnchor.constraint(equalToConstant: 270),
            trainerImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: trainerImage.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 48),
            
            createAccount.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            createAccount.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            createAccount.heightAnchor.constraint(equalToConstant: 58),
            createAccount.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -10),
            
            loginButton.heightAnchor.constraint(equalToConstant: 58),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            loginButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            
        ])
    }
}
