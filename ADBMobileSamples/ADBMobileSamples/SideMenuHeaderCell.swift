//
//  SideMenuHeaderCell.swift
//  ADBMobileSamples
//
//  Created by Muneesh Chauhan on 31/08/19.
//  Copyright © 2019 Adobe. All rights reserved.
//

import UIKit

class SideMenuHeaderCell: UITableViewCell {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imageContainerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        //setCornerRadious()
    }
    /// set corner radious
    private func setCornerRadious() {
        imgView.layer.cornerRadius = imgView.frame.height/2
        imageContainerView.layer.cornerRadius = imageContainerView.frame.height/2
        imgView.layoutIfNeeded()
        imageContainerView.layoutIfNeeded()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
