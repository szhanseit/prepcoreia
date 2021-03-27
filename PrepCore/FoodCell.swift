//
//  FoodCell.swift
//  PrepCore
//
//  Created by Sultan Zhanseit on 1/15/21.
//  Copyright © 2021 Sultan Zhanseit. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {
    
    // Outlets connecting to Storyboard elements in the custom table view cell, FoodCell
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
