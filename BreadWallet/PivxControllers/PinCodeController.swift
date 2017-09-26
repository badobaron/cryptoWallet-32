//
//  PinCodeController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/24/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class PinCodeController: BaseController {

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
    
    override func setup() {
        firstView.border(cornerRadius: 5)
        secondView.border(cornerRadius: 5)
        thirdView.border(cornerRadius: 5)
        fourthView.border(cornerRadius: 5)
    }
    
    override func setupNavigationBar() {
        navigationItem.title = "Create Pincode"
        navigationController?.setNavigationBarHidden(false, animated: true)
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
            toHome()
            return
        }
        code.append(number)
    }
    
    func removeNumber(){
        switch code.count {
        case 1:
            animateWith(view:firstView, widthAnchor: firstViewWidthConstraint, heightAnchor: firstViewHeightConstraint, constant: 10, color: .white)
            break
        case 2:
            animateWith(view:secondView, widthAnchor: secondViewWidthConstraint, heightAnchor: secondViewHeightConstraint, constant: 10, color: .white)
            break
        case 3:
            animateWith(view:thirdView, widthAnchor: thirdViewWidthConstraint, heightAnchor: thirdViewHeightConstraint, constant: 10, color: .white)
        case 4:
            animateWith(view:fourthView, widthAnchor: fourthViewWidthConstraint, heightAnchor: fourthViewHeightConstraint, constant: 10, color: .white)
            break
        default:
            return
        }
        let _ = code.popLast()
    }
    
    func clearNumber(){
        if code.count != 0 {
            animateWith(view:firstView, widthAnchor: firstViewWidthConstraint, heightAnchor: firstViewHeightConstraint, constant: 10, color: .white)
            animateWith(view:secondView, widthAnchor: secondViewWidthConstraint, heightAnchor: secondViewHeightConstraint, constant: 10, color: .white)
            animateWith(view:thirdView, widthAnchor: thirdViewWidthConstraint, heightAnchor: thirdViewHeightConstraint, constant: 10, color: .white)
            animateWith(view:fourthView, widthAnchor: fourthViewWidthConstraint, heightAnchor: fourthViewHeightConstraint, constant: 10, color: .white)
            code = []
        }
    }
    
    func toHome(){
        let menuController = MenuController(nibName: "Menu", bundle: nil)
        let myWalletController = MyWalletController(nibName: "MyWallet", bundle: nil)
        let nav = UINavigationController(rootViewController: myWalletController)
        let navigationController = SlideMenuController(mainViewController: nav, leftMenuViewController:menuController, rightMenuViewController: UIViewController())
        navigationController.removeRightGestures()
        
        if let keyWindow = UIApplication.shared.keyWindow {
            keyWindow.rootViewController?.removeFromParentViewController()
            keyWindow.rootViewController = navigationController
            keyWindow.makeKeyAndVisible()
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
