//
//  PinCodeController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/24/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

enum PinCodeType:String {
    case purple
    case white
}

class PinCodeController: BaseController {

    @IBOutlet weak var n2Label: UILabel!
    @IBOutlet weak var n1Label: UILabel!
    @IBOutlet weak var n4Label: UILabel!
    @IBOutlet weak var n5Label: UILabel!
    @IBOutlet weak var n6Label: UILabel!
    @IBOutlet weak var n7Label: UILabel!
    @IBOutlet weak var n3Label: UILabel!
    @IBOutlet weak var n8Label: UILabel!
    @IBOutlet weak var n9Label: UILabel!
    @IBOutlet weak var n0Label: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var fourthViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var fourthViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var thirdViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var thirdViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var secondViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var firstViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var firstViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var secondViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    
    var code:[String] = []
    var type:PinCodeType = .purple
    var auxTitle:String = ""
    
    override func setup() {
        firstView.border(cornerRadius: 5)
        secondView.border(cornerRadius: 5)
        thirdView.border(cornerRadius: 5)
        fourthView.border(cornerRadius: 5)
        configureWith(type: type)
        
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationItem.title = "Create Pincode"
        navigationController?.setNavigationBarHidden(false, animated: true)
        if type == .white {
            navigationItem.title = "Update Pincode"
        }
    }
    
    func configureWith(type:PinCodeType){
        if type == .white {
            titleLabel.textColor = K.color.black_r58g58b58
            titleLabel.text = auxTitle
            view.backgroundColor = .white
            n2Label.textColor = K.color.black_r58g58b58
            n1Label.textColor = K.color.black_r58g58b58
            n4Label.textColor = K.color.black_r58g58b58
            n5Label.textColor = K.color.black_r58g58b58
            n6Label.textColor = K.color.black_r58g58b58
            n7Label.textColor = K.color.black_r58g58b58
            n3Label.textColor = K.color.black_r58g58b58
            n8Label.textColor = K.color.black_r58g58b58
            n9Label.textColor = K.color.black_r58g58b58
            n0Label.textColor = K.color.black_r58g58b58
            firstView.backgroundColor = K.color.gray_r155g155b155
            secondView.backgroundColor = K.color.gray_r155g155b155
            thirdView.backgroundColor = K.color.gray_r155g155b155
            fourthView.backgroundColor = K.color.gray_r155g155b155
        }
    }
    
    func addNumber(number:String){
        switch code.count {
        case 0:
            animateWith(view:firstView, widthAnchor: firstViewWidthConstraint, heightAnchor: firstViewHeightConstraint, constant: 15, color: K.color.gree_r0g150b136)
            break
        case 1:
            animateWith(view:secondView, widthAnchor: secondViewWidthConstraint, heightAnchor: secondViewHeightConstraint, constant: 15, color: K.color.gree_r0g150b136)
            break
        case 2:
            animateWith(view:thirdView, widthAnchor: thirdViewWidthConstraint, heightAnchor: thirdViewHeightConstraint, constant: 15, color: K.color.gree_r0g150b136)
        case 3:
            animateWith(view:fourthView, widthAnchor: fourthViewWidthConstraint, heightAnchor: fourthViewHeightConstraint, constant: 15, color: K.color.gree_r0g150b136)
            break
        default:
            return
        }
        code.append(number)
    }
    
    func removeNumber(){
        var color = UIColor.white
        if type == .white {
            color = K.color.gray_r155g155b155
        }
        switch code.count {
        case 1:
            animateWith(view:firstView, widthAnchor: firstViewWidthConstraint, heightAnchor: firstViewHeightConstraint, constant: 10, color: color)
            break
        case 2:
            animateWith(view:secondView, widthAnchor: secondViewWidthConstraint, heightAnchor: secondViewHeightConstraint, constant: 10, color: color)
            break
        case 3:
            animateWith(view:thirdView, widthAnchor: thirdViewWidthConstraint, heightAnchor: thirdViewHeightConstraint, constant: 10, color: color)
        case 4:
            animateWith(view:fourthView, widthAnchor: fourthViewWidthConstraint, heightAnchor: fourthViewHeightConstraint, constant: 10, color: color)
            break
        default:
            return
        }
        let _ = code.popLast()
    }
    
    func clearNumber(){
        if code.count != 0 {
            var color = UIColor.white
            if type == .white {
                color = K.color.gray_r155g155b155
            }
            animateWith(view:firstView, widthAnchor: firstViewWidthConstraint, heightAnchor: firstViewHeightConstraint, constant: 10, color: color)
            animateWith(view:secondView, widthAnchor: secondViewWidthConstraint, heightAnchor: secondViewHeightConstraint, constant: 10, color: color)
            animateWith(view:thirdView, widthAnchor: thirdViewWidthConstraint, heightAnchor: thirdViewHeightConstraint, constant: 10, color: color)
            animateWith(view:fourthView, widthAnchor: fourthViewWidthConstraint, heightAnchor: fourthViewHeightConstraint, constant: 10, color: color)
            code = []
        }
    }
    
    func animateWith(view:UIView, widthAnchor:NSLayoutConstraint, heightAnchor:NSLayoutConstraint, constant:CGFloat, color:UIColor){
        UIView.animate(withDuration: 0.5, animations: {
            widthAnchor.constant = constant
            heightAnchor.constant = constant
            view.border(cornerRadius: constant/2)
            view.backgroundColor = color
        })
    }
    
    @IBAction func tapped1Button(_ sender: Any) {
        addNumber(number: "1")
    }
    
    @IBAction func tapped2Button(_ sender: Any) {
        addNumber(number: "2")
    
    }
    @IBAction func tapped3Button(_ sender: Any) {
        addNumber(number: "3")
    }
    @IBAction func tapped4Button(_ sender: Any) {
        addNumber(number: "4")
    }
    @IBAction func tapped5Button(_ sender: Any) {
        addNumber(number: "5")
    }
    @IBAction func tapped6Button(_ sender: Any) {
        addNumber(number: "6")
    }
    @IBAction func tapped7Button(_ sender: Any) {
        addNumber(number: "7")
    }
    @IBAction func tapped8Button(_ sender: Any) {
        addNumber(number: "8")
    }
    @IBAction func tapped9Button(_ sender: Any) {
        addNumber(number: "9")
    }
    @IBAction func tapped0Button(_ sender: Any) {
        addNumber(number: "0")
    }
    @IBAction func tappedBackButton(_ sender: Any) {
        removeNumber()
    }
    @IBAction func tappedClearButton(_ sender: Any) {
        clearNumber()
    }
}
