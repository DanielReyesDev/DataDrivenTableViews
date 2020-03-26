//
//  TitledCellModel.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 26/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import Foundation

struct TitledCellModel {
    let title: String?
    let description: String?
    
    init(title: String? = nil, description: String? = nil) {
        self.title = title
        self.description = description
    }
}
