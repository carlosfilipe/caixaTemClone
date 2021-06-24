//
//  ViewController.swift
//  caixatemclone
//
//  Created by retina on 15/06/21.
//

import UIKit

class TabViewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1: UINavigationController = {
           let vc = UINavigationController(rootViewController: HomeViewController())
            vc.title = "V1"
            vc.tabBarItem.image = UIImage(systemName: "house")
            return vc
        }()
        
        let vc2: UINavigationController = {
           let vc = UINavigationController(rootViewController: SettingsViewController())
            vc.title = "Ajustes"
            vc.tabBarItem.image = UIImage(systemName: "gearshape")
            return vc
        }()
        
        let vc3: UINavigationController = {
           let vc = UINavigationController(rootViewController: VirtualCardController())
            vc.tabBarItem.image = UIImage(systemName: "creditcard")
            vc.title = "Cartão Virtual"

        return vc
        }()
        
        
        viewControllers = [
            vc2, vc3, vc1,
        ]
        
        
        
        
//        addChild(TabViewController())
        
        // Do any additional setup after loading the view.
    }


}


extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
        navigationBar.tintColor = .white
        navigationBar.barTintColor = UIColor(red: 5/255, green: 140/255, blue: 255/255, alpha: 1)
        navigationBar.isTranslucent = false


    }

}
