//
//  WelcomeView.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 19/12/24.
//

import Foundation
import UIKit

class WelcomeView: UIView {
    
     lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
     lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.numberOfPages = 2
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    private lazy var continueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continuar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
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
        addSubview(scrollView)
        addSubview(pageControl)
        addSubview(continueButton)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            scrollView.heightAnchor.constraint(equalToConstant: 300),
            
            pageControl.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 10),
            pageControl.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            continueButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            continueButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
            continueButton.bottomAnchor.constraint(lessThanOrEqualTo: safeAreaLayoutGuide.bottomAnchor, constant: -32) 
        ])
    }

}
