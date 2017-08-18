//
//  MenuTableViewCell.swift
//  LevelSense
//
//  Created by Navneet on 8/18/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet var optionImageView: UIImageView!
    @IBOutlet var optionNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
