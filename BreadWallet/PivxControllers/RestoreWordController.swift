//
//  RestoreWordController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class RestoreWordController: BaseController {
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var containerViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func setup(){
        scrollView.isPagingEnabled = true
        containerViewWidthConstraint.constant = K.main.width * 3
        guard let view1 = Bundle.main.loadNibNamed("RestoreWordView", owner: self, options: nil)?.first as? RestoreWordView,
        let view2 = Bundle.main.loadNibNamed("RestoreWordView", owner: self, options: nil)?.first as? RestoreWordView,
            let view3 = Bundle.main.loadNibNamed("RestoreWordView", owner: self, options: nil)?.first as? RestoreWordView else {
        
                return
        }
        
        view1.confureWith(title: "To restore your wallet you must write your 24 words, write your security words in the right order from number 1 to 8.", type: 0)
        view2.confureWith(title: "Write your security words in the right order from number 9 to 16", type: 1)
        view3.confureWith(title: "Write your security words in the right order from number 17 to 24.", type: 2)
        
        containerView.addSubview(view1)
        containerView.addSubview(view2)
        containerView.addSubview(view3)
        
        view1.anchor(containerView.topAnchor, left: containerView.leftAnchor, bottom: containerView.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: K.main.width, heightConstant: 0)
        view2.anchor(containerView.topAnchor, left: view1.rightAnchor, bottom: containerView.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: K.main.width, heightConstant: 0)
        view3.anchor(containerView.topAnchor, left: view2.rightAnchor, bottom: containerView.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: K.main.width, heightConstant: 0)
        
        leftButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        
    }
    
    override func setupNavigationBar(){
        super.setupNavigationBar()
        navigationItem.title = "Restore Wallet"
    }

    @IBAction func tappedRightButton(_ sender: Any) {
    }
    @IBAction func tappedLeftButton(_ sender: Any) {
    }
}
