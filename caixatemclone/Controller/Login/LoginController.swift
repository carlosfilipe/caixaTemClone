//
//  LoginControllerViewController.swift
//  caixatemclone
//
//  Created by retina on 21/06/21.
//

import UIKit

class LoginController: UIViewController {
    
    let welcome: UILabel = {
        let label = UILabel()
        label.text = "Olá! Seja bem-vindo ao"
        label.textColor = .white
//        label.backgroundColor = .red
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label;
        
    }()
    
    let imageContainer: UIView = {
        let containerView = UIView()
//        containerView.backgroundColor = .green
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    let logo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let versionLabel: UILabel = {
        let label = UILabel()
        label.text = "v1.40.0"
//        label.backgroundColor = .green
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let enterButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ENTRAR", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.tintColor = .white
        button.backgroundColor = .orange
        button.layer.cornerRadius = 3
//        button.layer.shadowColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
//        button.layer.shadowOffset = CGSize(width: 10, height: 10)
        return button
    }()
    
    let needHelpButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("PRECISO DE AJUDA", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//        button.backgroundColor = .orange
        button.tintColor = .white

        button.layer.cornerRadius = 3
        button.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.borderWidth = 1
//        button.layer.shadowColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
//        button.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        return button
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor(red: 0, green: 92/255, blue: 169/255, alpha: 1)
        setupViews()
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        
        let firstColor = UIColor(red: 0, green: 92/255, blue: 169/255, alpha: 1)
        let secondColor = UIColor(red: 22/255, green: 143/255, blue: 204/255, alpha: 1)
        gradient.startPoint = CGPoint.zero
        gradient.endPoint = CGPoint(x: 1,   y: 0)
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        view.layer.insertSublayer(gradient, at: 0)

    }
    
    func setupViews() {
        view.addSubview(welcome)
        view.addSubview(versionLabel)
        view.addSubview(imageContainer)
        view.addSubview(enterButton)
        view.addSubview(needHelpButton)
        
        
        imageContainer.addSubview(logo)
        imageContainer.topAnchor.constraint(equalTo: welcome.bottomAnchor).isActive = true
        imageContainer.bottomAnchor.constraint(equalTo: versionLabel.topAnchor).isActive = true
        imageContainer.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
       
        welcome.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//        welcome.heightAnchor.constraint(equalToConstant: 80).isActive = true
        welcome.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        logo.heightAnchor.constraint(equalTo: imageContainer.heightAnchor, multiplier: 0.8).isActive = true
        logo.widthAnchor.constraint(equalTo: imageContainer.widthAnchor, multiplier: 0.6).isActive = true
        logo.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor).isActive = true
        logo.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor).isActive = true

        
        versionLabel.bottomAnchor.constraint(equalTo: enterButton.topAnchor, constant: -20).isActive = true
//        versionLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        versionLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        enterButton.bottomAnchor.constraint(equalTo: needHelpButton.topAnchor, constant: -11).isActive = true
        enterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        enterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        enterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        
        needHelpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        needHelpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        needHelpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        needHelpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true

        
    }
    
}
