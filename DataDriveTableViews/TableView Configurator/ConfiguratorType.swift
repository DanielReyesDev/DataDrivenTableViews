//
//  ConfiguratorType.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 25/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import Foundation
import UIKit

protocol ConfiguratorType {
    associatedtype Item
    associatedtype Cell: UITableViewCell
    
    func reuseIdentifier(for item: Item, indexPath: IndexPath) -> String
    func configuredCell(for item: Item, tableView: UITableView, indexPath: IndexPath) -> Cell
    func registerCells(in tableView: UITableView)
}
