//
//  AppDelegate.swift
//  Burger_king
//
//  Created by parth on 3/1/17.
//  Copyright © 2017 parthanand.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var navController: UINavigationController!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ViewController()
        
        
        
        navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.topItem?.title = "Menu"
        
        
        let image_arrow : UIImage? = UIImage(named:"arrow")!.withRenderingMode(.alwaysOriginal)
        let barButtomItem = UIBarButtonItem(image: image_arrow, style: .plain, target: self, action: nil)
        navController.navigationBar.topItem?.leftBarButtonItem = barButtomItem
        
        self.window!.rootViewController = navController
        self.window?.makeKeyAndVisible()
        
        navController.navigationBar.barTintColor = UIColor(red: 1, green: 102/255, blue: 0, alpha: 1)
        navController.navigationBar.isTranslucent = false
        
        navController.navigationBar.hideBottomHairline()
        navController.navigationBar.barStyle = UIBarStyle.black
        
        
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        return true
    }
    
}

