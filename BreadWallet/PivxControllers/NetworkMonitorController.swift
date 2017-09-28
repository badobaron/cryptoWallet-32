//
//  NetworkMonitorController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/27/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class NetworkMonitorController: BaseController {
    
    lazy var tableView:UITableView = {
        let table = UITableView()
        table.register(UINib(nibName:"NetworkMonitorCell", bundle:nil), forCellReuseIdentifier: self.cellIdentifier)
        table.delegate = self
        table.dataSource = self
        table.tableFooterView = UIView(frame: CGRect.zero)
        table.rowHeight = UITableViewAutomaticDimension
        table.estimatedRowHeight = 80
        return table
    }()


    override func setup(){
    }
    
    override func setupNavigationBar() {
        super.setupNavigationBar()
        navigationItem.title = "Network Monitor"
        view.addSubview(tableView)
        tableView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}

extension NetworkMonitorController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
}
