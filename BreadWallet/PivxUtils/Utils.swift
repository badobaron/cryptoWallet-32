//
//  Utils.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/22/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
import IQKeyboardManagerSwift

class Utils: NSObject {

    static func configureNavigationBar(){
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for:.default)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().barTintColor = K.color.purple_r85g71b108
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white,
                                                            NSFontAttributeName: K.font.GillSansRegular()]
    }
    
    static func configureIQKeyboard() {
        IQKeyboardManager.sharedManager().enable = true
    }
    
    static func toHome()->UIViewController{
        let menuController = MenuController(nibName: "Menu", bundle: nil)
        let myWalletController = MyWalletController(nibName: "MyWallet", bundle: nil)
        let nav = UINavigationController(rootViewController: myWalletController)
        let navigationController = SlideMenuController(mainViewController: nav, leftMenuViewController:menuController, rightMenuViewController: UIViewController())
        navigationController.removeRightGestures()
        return navigationController
//        if let keyWindow = UIApplication.shared.keyWindow {
//            keyWindow.rootViewController?.removeFromParentViewController()
//            keyWindow.rootViewController = navigationController
//            keyWindow.makeKeyAndVisible()
//        }
    }
    
    static func toLogin()->UIViewController {
        let controller = LoginController(nibName:"Login",bundle:nil)
        let navigation = UINavigationController(rootViewController: controller)
        return navigation
    }
}
