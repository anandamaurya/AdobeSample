//
//  DetailsViewController.swift
//  ADBMobileSamples
//
//  Created by Himanshu Saraswat on 29/08/19.
//  Copyright © 2019 Adobe. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBAction func selectPlan(_ sender: Any) {
    }
    @IBOutlet weak var tableView: UITableView!
    struct Constant {
        static let cellIdentifier = "DetailTableViewCell"
    }
    
    @IBOutlet weak var imageView: UIImageView!
    var details: [Headline]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        
        self.title = "Plan Detail"
    }
    
    func registerCell() {
        self.tableView.register(UINib(nibName: Constant.cellIdentifier, bundle: nil), forCellReuseIdentifier: Constant.cellIdentifier)
    }

}

extension DetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constant.cellIdentifier, for: indexPath) as? DetailTableViewCell, let headline = details?[indexPath.row] else {
            return UITableViewCell()
        }
        
        cell.configure(detail: headline)
        return cell
    }
    
    
}
