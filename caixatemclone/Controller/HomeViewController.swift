//
//  ViewController.swift
//  caixatemclone
//
//  Created by retina on 15/06/21.
//

import UIKit

class HomeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "HOME"
        title = "home"
        view.backgroundColor = .white
        
        let button = UIButton()
        button.setTitle("teste", for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 60)
        button.setTitleColor(.black, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(navigate), for: .touchUpInside)
        
        
        // Do any additional setup after loading the view.
    }

    @objc func navigate() {
        
        
        parent?.navigationController?.pushViewController(UINavigationController(rootViewController: VirtualCardController()), animated: true)
    }

}

