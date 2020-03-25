//
//  OutlinedTextField.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 25/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class OutlinedTextField: UITextField {
    
    private struct Constants {
        static let padding: CGFloat = 8
    }

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(
            x: bounds.origin.x + Constants.padding,
            y: bounds.origin.y + Constants.padding,
            width: bounds.size.width - Constants.padding * 2,
            height: bounds.size.height - Constants.padding * 2
        )
    }
   
    @IBInspectable var placeholderText: String? {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0
    
    @IBInspectable var color: UIColor = UIColor.lightGray {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        
        if let placeHolderText = placeholderText {
            let label = UILabel()
            label.textColor = .red
            label.font = UIFont.systemFont(ofSize: 10)
            label.text = placeHolderText
            label.translatesAutoresizingMaskIntoConstraints = false
            
            addSubview(label)
            label.topAnchor.constraint(equalTo: topAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        }
    }

}
