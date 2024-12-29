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
    private var views: [UIView] = []
    
    
    override func loadView() {
        super.loadView()
        view = welcomeView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeView.scrollView.delegate = self
        setupPages()
    }
    
    private func setupPages() {
        let page1 = createPageView(
            image: UIImage(named: "trainer1"),
            title: "Todos os Pokémon em um só lugar!",
            description: "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo."
        )
        
        let page2 = createPageView(
            image: UIImage(named: "trainer2"),
            title: "Mantenha sua Pokédex atualizada",
            description: "Cadastre-se e mantenha seu perfil, Pokémon favoritos e muito mais salvos no aplicativo."
        )
        
        views = [page1, page2]
        
        for (index, page) in views.enumerated() {
            page.frame = CGRect(
                x: welcomeView.scrollView.bounds.width * CGFloat(index),
                y: 0,
                width: welcomeView.scrollView.bounds.width,
                height: welcomeView.scrollView.bounds.height
            )
            welcomeView.scrollView.addSubview(page)
            
            NSLayoutConstraint.activate([
                        page.topAnchor.constraint(equalTo: welcomeView.scrollView.topAnchor),
                        page.bottomAnchor.constraint(equalTo: welcomeView.scrollView.bottomAnchor),
                        page.leadingAnchor.constraint(equalTo: welcomeView.scrollView.leadingAnchor, constant: welcomeView.scrollView.bounds.width * CGFloat(index)),
            page.widthAnchor.constraint(equalTo: welcomeView.scrollView.widthAnchor)
                    ])
        }

        welcomeView.scrollView.contentSize = CGSize(
            width: welcomeView.scrollView.bounds.width * CGFloat(views.count),
            height: welcomeView.scrollView.bounds.height
        )
    }
    
    private func createPageView(image: UIImage?, title: String, description: String) -> UIView {
        let page = UIView()
        page.translatesAutoresizingMaskIntoConstraints = false
        
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = description
        descriptionLabel.font = UIFont.systemFont(ofSize: 16)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        page.addSubview(imageView)
        page.addSubview(titleLabel)
        page.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: page.topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: page.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: page.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: page.trailingAnchor, constant: -20),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: page.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: page.trailingAnchor, constant: -20),
            descriptionLabel.bottomAnchor.constraint(lessThanOrEqualTo: page.bottomAnchor, constant: -20)
        ])
        
        return page
    }

}
    
