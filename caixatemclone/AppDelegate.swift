//
//  AppDelegate.swift
//  caixatemclone
//
//  Created by retina on 15/06/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        window?.rootViewController = TabViewController()
//        window?.rootViewController = LoginController()
//        window?.rootViewController = StackViewEx1Controller()
//        window?.rootViewController = AutoLayoutTestViewController()

        NotificationCenter.default.addObserver(self, selector:#selector(done(notification:)),name:LoginController.notificationLogin,object: nil)

        
        //        window?.rootViewController = MainController(rootViewController: TabViewController())
        
        
        //        window?.rootViewController?.addChild(MainController(rootViewController: HomeViewController()))
        
        return true
    }
    
    @objc func done(notification: Notification) {
        window?.rootViewController = TabViewController()

    }
    
}

