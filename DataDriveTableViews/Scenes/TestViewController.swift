//
//  TestViewController.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 25/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import UIKit

final class TestViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        setupTable()
    }
    
    private func setupTable() {
        let section0 = Section(items: ["A", "B", "C"])
        let section1 = Section(items: ["1", "2", "3"])
        let dataSource = DataSource(sections: [section0, section1])

        let configurator = Configurator { (cell, model: String, tableView, indexPath) -> UITableViewCell in
            cell.textLabel?.text = model
            return cell
        }
        
        let table = FormTableViewController(dataSource: dataSource, configurator: configurator)
        
        add(child: table, container: view)
    }
    
    func add(child: UIViewController, container: UIView, configure: (_ childView: UIView) -> Void = { _ in }) {
        addChild(child)
        container.addSubview(child.view)
        configure(child.view)
        child.didMove(toParent: self)
    }
}
