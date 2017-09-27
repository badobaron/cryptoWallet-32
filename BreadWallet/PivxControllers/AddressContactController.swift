//
//  AddressContactController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

enum TableState:String{
    case success
    case error
    case loading
    case empty
}


class AddressContactController: BaseController {

    lazy var tableView:UITableView = {
        let table = UITableView()
        table.register(UINib(nibName:"AddressContactCell", bundle:nil), forCellReuseIdentifier: self.cellIdentifier)
        table.register(UINib(nibName:"AddressContactEmptyCell", bundle:nil), forHeaderFooterViewReuseIdentifier: self.emptyIdentifier)
        table.delegate = self
        table.dataSource = self
        table.tableFooterView = UIView(frame: CGRect.zero)
        table.rowHeight = UITableViewAutomaticDimension
        table.estimatedRowHeight = 80
        return table
    }()
    
    override func setup() {
        view.addSubview(tableView)
        tableView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationItem.title = "Address Book"
        addMenuButton()
        let addButton = UIBarButtonItem(image: UIImage(named:"icAdd")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(tappedAddButton))
        navigationItem.rightBarButtonItem = addButton
    }
    
    func tappedAddButton(){
        let controller = NewAddressController(nibName: "NewAddress", bundle: nil)
        navigationController?.show(controller, sender: nil)
    }
}

extension AddressContactController:UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if state == .empty {
            return 300
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if state == .empty {
            let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: emptyIdentifier)
            return footer
        }
        return nil
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
}
