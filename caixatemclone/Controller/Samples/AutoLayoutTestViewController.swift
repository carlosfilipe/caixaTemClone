//
//  AutoLayoutTestViewController.swift
//  caixatemclone
//
//  Created by retina on 23/06/21.
//

import UIKit

class AutoLayoutTestViewController: UIViewController {
    
    let topImageViewContainer: UIView = {
        let _view = UIView()
//        _view.backgroundColor = .green
        _view.translatesAutoresizingMaskIntoConstraints = false

        return _view
    }()
    
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "logo")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games"
        textView.textColor = .white
        textView.backgroundColor = .clear
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        
        
        let firstColor = UIColor(red: 0, green: 92/255, blue: 169/255, alpha: 1)
        let secondColor = UIColor(red: 22/255, green: 143/255, blue: 204/255, alpha: 1)
        gradient.startPoint = CGPoint.zero
        gradient.endPoint = CGPoint(x: 1,   y: 0)
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
        
        
        view.backgroundColor = .white
        
        setupViews()

        // Do any additional setup after loading the view.
    }
    

    private func setupViews() {
        view.addSubview(descriptionTextView)
        view.addSubview(topImageViewContainer)
        
        topImageViewContainer.addSubview(logoImageView)


        topImageViewContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageViewContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topImageViewContainer.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
      
        logoImageView.centerXAnchor.constraint(equalTo: topImageViewContainer.centerXAnchor).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: topImageViewContainer.centerYAnchor).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: topImageViewContainer.heightAnchor, multiplier: 0.5).isActive = true
//        logoImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageViewContainer.bottomAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        
        
    }

}
