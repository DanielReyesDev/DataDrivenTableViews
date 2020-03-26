//
//  TestViewController.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 25/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import UIKit

final class CheckoutFormViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        setupTable()
    }
    
    private func setupTable() {
        
        let userDataSection = Section<CheckOutFormCell>(items: [ .titled(TitledCellModel(title: "Datos de quien recoge")),
                                                                 .textField(TextFieldCellModel(placeHolder: "Nombre(s)*")),
                                                                 .textField(TextFieldCellModel(placeHolder: "Apellido(s)*"))] )
        
        let dataSource = DataSource(sections: [userDataSection])
        
        let titledCellConfigurator = Configurator { (cell, model: TitledCellModel, tableView, indexPath) -> TitledTableViewCell in
            cell.configure(model: model)
            return cell
        }
        
        let textFieldCellConfigurator = Configurator { [weak self] (cell, model: TextFieldCellModel, tableView, indexPath) -> TextFieldTableViewCell in
            cell.configure(model: model, delegate: self)
            return cell
        }
        
        let checkOutConfigurator = CheckOutFormConfigurator(textFieldCellConfigurator: textFieldCellConfigurator,
                                                            titledCellConfigurator: titledCellConfigurator)
        
        let table = FormTableViewController(dataSource: dataSource, configurator: checkOutConfigurator)
        
        add(child: table, container: view)
    }
}

extension CheckoutFormViewController: TextFieldTableViewCellDelegate {
    
    func textFieldTabelViewCellDidEndEditing(text: String) {
        print(text)
    }
}
