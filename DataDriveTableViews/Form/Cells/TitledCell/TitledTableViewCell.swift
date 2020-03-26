//
//  TitledTableViewCell.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 26/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import UIKit

class TitledTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(model: TitledCellModel) {
        titleLabel.text = model.title
        descriptionLabel.text = model.description
    }
    
}
