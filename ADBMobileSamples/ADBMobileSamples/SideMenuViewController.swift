//
//  SideMenuViewController.swift
//  ADBMobileSamples
//
//  Created by Muneesh Chauhan on 31/08/19.
//  Copyright © 2019 Adobe. All rights reserved.
//

import UIKit


class SideMenuViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let headingArray = ["Last Bill Amount",
    "Current Uses",
    "Current Plan"]
    let descriptionArray = ["$ 200",
    "$ 100",
    "Plan 1",
    "We recommend you to switch on new plan recently introduced."]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableCell()
    }
    private func registerTableCell() {
        tableView.register(SideMenuHeaderCell.self, forCellReuseIdentifier: "SideMenuHeaderCell")
        tableView.register(SideMenuCell.self, forCellReuseIdentifier: "SideMenuCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200
        tableView.dataSource = self
        tableView.delegate = self
    }
}
// MARK: - UITableViewDelegate, UITableViewDataSource
extension SideMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headingArray.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuHeaderCell", for: indexPath)
            return cell
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell", for: indexPath) as? SideMenuCell {
                ////cell.titleLabel.text = headingArray[indexPath.row]
                //cell.descriptionLabel.text = descriptionArray[indexPath.row]
            return cell
            }
        }
        return cell
    }
}
