//
//  MenuController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class MenuController: BaseController {

    @IBOutlet weak var syncImageView: UIImageView!
    @IBOutlet weak var syncLabel: UILabel!
    @IBOutlet weak var cotainerViewHeightConstraint: NSLayoutConstraint!
    
    override func setup(){
        cotainerViewHeightConstraint.constant = K.main.height - 130
    }

    @IBAction func tappedMyWalletButton(_ sender: Any) {
    }
    @IBAction func tappedAddressBookButton(_ sender: Any) {
    }
    @IBAction func tappedSettingButton(_ sender: Any) {
    }
    @IBAction func tappedDonationButton(_ sender: Any) {
        let controller = DonationController(nibName:"Donation", bundle:nil)
        slideMenuController()?.mainViewController?.show(controller, sender: nil)
        slideMenuController()?.closeLeft()
    }
}
