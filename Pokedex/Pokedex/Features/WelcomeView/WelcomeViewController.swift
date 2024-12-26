//
//  WelcomeViewController.swift
//  Pokedex
//
//  Created by Lucas Eduardo Torres Santana on 19/12/24.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    private let welcomeView = WelcomeView()
    private let pages = [
        (image: UIImage(systemName: "trainer1"),
         title: " Todos os Pókemons em um só lugar! ",
         description: "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo"),
        (image: UIImage(systemName: "trainer1"),
         title: " Todos os Pókemons em um só lugar! ",
         description: "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo")
    ]
    
    override func loadView() {
        super.loadView()
        view = welcomeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureScrollView()
        welcomeView.scrollView.delegate = self
        welcomeView.pageControl.addTarget(self, action: #selector(pageControlChanged), for: .valueChanged)
    }
    
    private func configureScrollView() {
        let scrollView = welcomeView.scrollView
        let scrollViewWidth = view.frame.width - 40
        let scrollViewHeight: CGFloat = 300
        
        scrollView.contentSize = CGSize(width: scrollViewWidth * CGFloat(pages.count), height: scrollViewHeight)
        
        for (index, page) in pages.enumerated() {
            
            let pageView = createPageView(frame: CGRect(
                x: scrollViewWidth * CGFloat(index), y: 0, width: scrollViewWidth, height: scrollViewHeight
            ), image: page.image, title: page.title, description: page.description)
        }
    }
    
     func createPageView(frame: CGRect, image: UIImage?, title: String, description: String) -> UIView {
        let view = UIView(frame: frame)
        
        lazy var imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        lazy var descriptionLabel = UILabel()
        descriptionLabel.text = description
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.textColor = .gray
       
        lazy var titleLabel = UILabel()
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 24, weight: .bold)
        titleLabel.text = " Todos os Pókemons em um só lugar! "
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
       
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        
         NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: -10),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: -10),
         ])
         
        return view
    }
    
    @objc private func pageControlChanged(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        let scrollViewWidth = view.frame.width - 40
        
        welcomeView.scrollView.setContentOffset(CGPoint(x: scrollViewWidth * CGFloat(currentPage), y: 0), animated: true)
    }
    
      func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageWidth = view.frame.width - 40
        let currentPage = Int(scrollView.contentOffset.x / pageWidth)
        
         welcomeView.pageControl.currentPage = currentPage
    }
}
