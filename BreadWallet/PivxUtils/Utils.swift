//
//  Utils.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/22/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class Utils: NSObject {

    static func configureNavigationBar(){
        UINavigationBar.appearance().barTintColor = K.color.purple_r85b71g108
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white,
                                                            NSFontAttributeName: K.font.GillSansRegular()]
    }
}
