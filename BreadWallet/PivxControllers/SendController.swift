//
//  SendController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/27/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class SendController: BaseController {

    @IBOutlet weak var sendButton: UIButton!
    
    override func setup(){
        sendButton.border(cornerRadius: 5, color: K.color.purple_r85g71b108)
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationItem.title = "Send"
        addOptionButton()
    }

    
    override func tappedOptionButton() {
        
        let sheet = UIAlertController(title: "", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title:"Cancel", style: .cancel, handler: nil)
        
        let coinSelectionOption = UIAlertAction(title:"Coin selection", style: .default, handler: { action in
            self.toCoinSelection()
        })
        
        let multiOption = UIAlertAction(title:"Multi output", style: .default, handler: { action in
            self.toMultiOutput()
        })
        
        let customFeeOption = UIAlertAction(title:"Custom fee", style: .default, handler: { action in
            self.toCustomFee()
        })
        
        
        sheet.addAction(coinSelectionOption)
        sheet.addAction(multiOption)
        sheet.addAction(customFeeOption)
        sheet.addAction(cancelAction)
        
        present(sheet, animated: true, completion: nil)
    }
    
    func toCoinSelection(){
        let controller = CoinSelectionController(nibName: "CoinSelection", bundle: nil)
        navigationController?.show(controller, sender: nil)
    }
    
    func toMultiOutput(){
    
    }
    
    func toCustomFee(){
    }
    
}
