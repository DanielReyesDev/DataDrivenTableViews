//
//  TextFieldCellModel.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 26/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import Foundation

struct TextFieldCellModel {
    let placeHolder: String
    var text: String?
    
    init(placeHolder: String, text: String? = nil) {
        self.placeHolder = placeHolder
        self.text = text
    }
}
