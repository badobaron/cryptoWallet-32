//
//  MyWalletController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class MyWalletController: BaseController {

    @IBOutlet weak var tableView: UITableView!
    
    override func setup(){
        tableView.register(UINib(nibName:"MyWalletEmptyCell", bundle:nil), forHeaderFooterViewReuseIdentifier: emptyIdentifier)
        tableView.register(UINib(nibName:"MyWalletCell", bundle:nil), forCellReuseIdentifier: cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 80
    }
    
    override func setupNavigationBar() {
        navigationItem.title = "My wallet"
        state = .empty
        addMenuButton()
        let qrButton = UIBarButtonItem(image: UIImage(named:"icQrCodeWhite"), style: .plain, target: self, action: #selector(tappedQrButton))
        let scanButton = UIBarButtonItem(image: UIImage(named:"icScan"), style: .plain, target: self, action: #selector(tappedScanButton))
        navigationItem.rightBarButtonItems = [scanButton, qrButton]
    }
    
    
    
    func tappedQrButton(){
        let controller = MyAddressController(nibName: "MyAddress", bundle: nil)
        navigationController?.show(controller, sender: nil)
    }
    
    func tappedScanButton(){
    }

}

extension MyWalletController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if state == .empty {
            let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: emptyIdentifier)
            return footer
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if state == .empty {
            return 300
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
}
