//
//  CheckOutFormConfigurator.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 26/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import Foundation
import UIKit

struct CheckOutFormConfigurator: ConfiguratorType {
    
    // All configutators related with the CheckOut Form
    let textFieldCellConfigurator: Configurator<TextFieldCellModel, TextFieldTableViewCell>
    let titledCellConfigurator: Configurator<TitledCellModel, TitledTableViewCell>
    
    func reuseIdentifier(for item: CheckOutFormCell, indexPath: IndexPath) -> String {
        switch item {
        case .textField:
            return textFieldCellConfigurator.reuseIdentifier
        case .titled:
            return titledCellConfigurator.reuseIdentifier
        }
    }
    
    func configuredCell(for item: CheckOutFormCell, tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        switch item {
        case .textField(let model):
            return textFieldCellConfigurator.configuredCell(for: model, tableView: tableView, indexPath: indexPath)
        case .titled(let model):
            return titledCellConfigurator.configuredCell(for: model, tableView: tableView, indexPath: indexPath)
        }
    }
    
    func registerCells(in tableView: UITableView) {
        textFieldCellConfigurator.registerCells(in: tableView)
        titledCellConfigurator.registerCells(in: tableView)
    }

}
