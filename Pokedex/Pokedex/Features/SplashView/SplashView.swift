//
//  SplashView.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 18/12/24.
//

import Foundation
import UIKit

class SplashView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "splashIcon")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.frame = CGRect(x: 0, y: 0, width: 192, height: 71)
        return image
    }()
    
    func setupUI() {
        backgroundColor = UIColor(named: "splashBackgroundColor")
        addSubview(imageView)
        setupConstraints()
    }
    
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
        imageView.topAnchor.constraint(equalTo: topAnchor),
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
