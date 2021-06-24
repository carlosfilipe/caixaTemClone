//
//  SettingsViewController.swift
//  caixatemclone
//
//  Created by retina on 16/06/21.
//

import UIKit

struct SettingsOption {
    let title: String
    let handler:(() -> Void)
}

class SettingsViewController: UITableViewController{
    
    override func viewDidLoad() {
        title = "Ajustes"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    
     
}
