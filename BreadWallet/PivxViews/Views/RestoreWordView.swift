//
//  RestoreWordView.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class RestoreWordView: UIView {

    @IBOutlet weak var oneTextField: UITextField!
    @IBOutlet weak var threeTextField: UITextField!
    @IBOutlet weak var fiveTextField: UITextField!
    @IBOutlet weak var sevenTextField: UITextField!
    @IBOutlet weak var twoTextField: UITextField!
    @IBOutlet weak var fourTextField: UITextField!
    @IBOutlet weak var sixTextField: UITextField!
    @IBOutlet weak var eightTextField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func confureWith(title:String, type:Int){
        titleLabel.text = title
        switch type {
        case 0:
            oneTextField.placeholder = "Word 1"
            threeTextField.placeholder = "Word 3"
            fiveTextField.placeholder = "Word 5"
            sevenTextField.placeholder = "Word 7"
            twoTextField.placeholder = "Word 2"
            fourTextField.placeholder = "Word 4"
            sixTextField.placeholder = "Word 6"
            eightTextField.placeholder = "Word 8"
            break
        case 1:
            oneTextField.placeholder = "Word 9"
            twoTextField.placeholder = "Word 10"
            threeTextField.placeholder = "Word 11"
            fourTextField.placeholder = "Word 12"
            fiveTextField.placeholder = "Word 13"
            sixTextField.placeholder = "Word 14"
            sevenTextField.placeholder = "Word 15"
            eightTextField.placeholder = "Word 16"
            break
        case 2:
            oneTextField.placeholder = "Word 17"
            twoTextField.placeholder = "Word 18"
            threeTextField.placeholder = "Word 19"
            fourTextField.placeholder = "Word 20"
            fiveTextField.placeholder = "Word 21"
            sixTextField.placeholder = "Word 22"
            sevenTextField.placeholder = "Word 23"
            eightTextField.placeholder = "Word 24"
            break
        default:
            break
        }
        
    }

}
