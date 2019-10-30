//
//  DetailTableViewCell.swift
//  ADBMobileSamples
//
//  Created by Himanshu Saraswat on 29/08/19.
//  Copyright © 2019 Adobe. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDetails: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(detail: Headline) {
        lblTitle.text = detail.detailsTitle
        lblDetails.text = detail.text
    }
}
