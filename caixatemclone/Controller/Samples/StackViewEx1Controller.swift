//
//  StackViewEx1Controller.swift
//  caixatemclone
//
//  Created by retina on 22/06/21.
//

import UIKit

class StackViewEx1Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createStackView()

    }
    
    func createStackView() {
        
        let welcome = UILabel()
        welcome.text = "Olá! Seja bem-vindo ao"
        welcome.backgroundColor = .systemRed
        welcome.textColor = .white
//        welcome.font = .systemFont(ofSize: 21, weight: .regular)
        welcome.textAlignment = .center
        welcome.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.image = UIImage(systemName:"house")
        imageView.contentMode = .scaleAspectFit
        
        let label = UILabel()
        label.text = "Hello World"
        label.backgroundColor = .systemRed
        label.font = .systemFont(ofSize: 21, weight: .bold)
        label.textAlignment = .center
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        label.widthAnchor

        
        
        let stackView = UIStackView(arrangedSubviews: [welcome, imageView, label])
//        stackView.backgroundColor = .green
        stackView.frame = view.bounds
        
        
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 20
        
        
        view.addSubview(stackView)
    }
    

}
