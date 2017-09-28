//
//  SettingController.swift
//  BreadWallet
//
//  Created by German Mendoza on 9/26/17.
//  Copyright © 2017 Aaron Voisine. All rights reserved.
//

import UIKit

class SettingController: BaseController {

    override func setup(){
    }
    
    override func setupNavigationBar() {
        navigationItem.title = "Settings"
        addMenuButton()
    }

    @IBAction func tappedBackupButton(_ sender: Any) {
        let controller = BackupController(nibName: "Backup", bundle: nil)
        navigationController?.show(controller, sender: nil)
    }
    @IBAction func tappedRestoreButton(_ sender: Any) {
        let controller = RestoreController(nibName: "Restore", bundle: nil)
        navigationController?.show(controller, sender: nil)
    }
    
    @IBAction func tappedWatchOnlyButton(_ sender: Any) {
        let controller = WatchOnlyController(nibName: "WatchOnly", bundle: nil)
        navigationController?.show(controller, sender: nil)
    }
    @IBAction func tappedExportWalletButton(_ sender: Any) {
        let controller = ExportWalletController(nibName: "ExportWallet", bundle: nil)
        navigationController?.show(controller, sender: nil)
    }
    @IBAction func tappedPinCodeButton(_ sender: Any) {
        let controller = PinCodeController(nibName: "PinCode", bundle: nil)
        controller.type = .white
        controller.auxTitle = "Insert your current PIN"
        navigationController?.show(controller, sender: nil)
    }
    @IBAction func tappedNetworkMonitorButton(_ sender: Any) {
        let controller = NetworkMonitorController()
        navigationController?.show(controller, sender: nil)
        
    }
}
