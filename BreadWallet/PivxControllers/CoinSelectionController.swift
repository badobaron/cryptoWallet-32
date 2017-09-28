//
//  CoinSelectionController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/27/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class CoinSelectionController: BaseController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var selectButton: UIButton!
    
    
    override func setup(){
        selectButton.border(cornerRadius: 5, color: K.color.purple_r85g71b108)
        tableView.register(UINib(nibName:"EmptyCell", bundle:nil), forHeaderFooterViewReuseIdentifier: emptyIdentifier)
        tableView.register(UINib(nibName:"CoinSelectionCell", bundle:nil), forCellReuseIdentifier: cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 80
    }
    
    override func setupNavigationBar(){
        super.setupNavigationBar()
        navigationItem.title = "Coins selection"
    }
    
}

extension CoinSelectionController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if state == .empty {
            let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: emptyIdentifier) as! EmptyCell
            footer.cofigureWith(title: "You don’t have anytransfers yet.", name: "imgCoinsEmpty")
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
