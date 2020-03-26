//
//  TextFieldTableViewCell.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 25/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import UIKit

protocol TextFieldTableViewCellDelegate: AnyObject {
    func textFieldTabelViewCellDidEndEditing(text: String)
}

final class TextFieldTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textField: OutlinedTextField!
    
    private weak var delegate: TextFieldTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        textField.delegate = self
    }
    
    func configure(model: TextFieldCellModel, delegate:  TextFieldTableViewCellDelegate?) {
        self.delegate = delegate
        textField.placeholderText = model.placeHolder
        textField.text = model.text
    }
}

extension TextFieldTableViewCell: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else { return }
        delegate?.textFieldTabelViewCellDidEndEditing(text: text)
    }
}
