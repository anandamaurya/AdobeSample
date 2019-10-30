//
//  SideMenuCell.swift
//  ADBMobileSamples
//
//  Created by Muneesh Chauhan on 31/08/19.
//  Copyright © 2019 Adobe. All rights reserved.
//

import UIKit

class SideMenuCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
