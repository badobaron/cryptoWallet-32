//
//  Constants.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/22/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import Foundation

struct K {

    struct main {
        static let width: CGFloat = UIScreen.main.bounds.size.width
        static let height: CGFloat = UIScreen.main.bounds.size.height
        static let maxSize = CGSize(width: K.main.width, height: K.main.height)
    }

    struct color {
        static let black_r42g42b42 = UIColor.rgb(42, green: 42, blue: 42)
        static let purple_r85g71b108 = UIColor.rgb(85, green: 71, blue: 108)
        static let gray_r207g208b209 = UIColor.rgb(207, green: 208, blue: 209)
        static let gree_r0g150b136 = UIColor.rgb(0, green: 150, blue: 136)
    }
    
    struct font {
        static func GillSansRegular(size:CGFloat = 17) -> UIFont {
            return UIFont(name: "GillSans", size: size)!
        }
        
        static func GillSansBold(size:CGFloat = 17) -> UIFont {
            return UIFont(name: "GillSans-Bold", size: size)!
        }
        
        static func GillSansSemiBold(size:CGFloat = 17) -> UIFont {
            return UIFont(name: "GillSans-SemiBold", size: size)!
        }
    }
}
