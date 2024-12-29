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
        scrollView.showsHorizontalScrollIndicator = true
         scrollView.isPagingEnabled = true
        return scrollView
    }()
    
    lazy var textTest: UILabel = {
        let label = UILabel()
        label.text = "Bem vindo ao Pokedex!"
        label.textColor = .black
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var textTest2: UILabel = {
        let label = UILabel()
        label.text = "Bem vindo ao Pokedex!"
        label.textColor = .black
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    lazy var pageControl: UIPageControl = {
//           let pageControl = UIPageControl()
//           pageControl.currentPage = 0
//           pageControl.translatesAutoresizingMaskIntoConstraints = false
//           return pageControl
//       }()
    
     lazy var continueButton: UIButton = {
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
    //    addSubview(pageControl)
        addSubview(textTest2)
        addSubview(textTest)
        addSubview(continueButton)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            textTest2.bottomAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
            
            
            scrollView.centerYAnchor.constraint(equalTo: centerYAnchor),
            scrollView.heightAnchor.constraint(equalToConstant: 400),
            scrollView.centerXAnchor.constraint(equalTo: centerXAnchor),
           // pageControl.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 20),
            
            textTest.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 100),
            textTest.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            textTest.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
          
            
            continueButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            continueButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
            continueButton.bottomAnchor.constraint(lessThanOrEqualTo: safeAreaLayoutGuide.bottomAnchor, constant: -32) 
        ])
    }

}
