//
//  ExampleTableViewController.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 25/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import Foundation
import UIKit

class FormTableViewController<Item, Cell: UITableViewCell>: UITableViewController {
    
    let dataSource: DataSource<Item>
    let configurator: Configurator<Item, Cell>
    
    init(dataSource: DataSource<Item>, configurator: Configurator<Item, Cell>) {
        self.dataSource = dataSource
        self.configurator = configurator
        super.init(nibName: nil, bundle: nil)
        configurator.registerCells(in: tableView)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { fatalError() }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.numberOfSections()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.numberOfItems(in: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = dataSource.item(at: indexPath)
        return configurator.configuredCell(for: item, tableView: tableView, indexPath: indexPath)
    }
}
