//
//  UIViewController+Extensions.swift
//  DataDriveTableViews
//
//  Created by Daniel Reyes Sanchez on 26/03/20.
//  Copyright © 2020 Walmart. All rights reserved.
//

import UIKit

extension UIViewController {
    func add(child: UIViewController, container: UIView, configure: (_ childView: UIView) -> Void = { _ in }) {
        addChild(child)
        container.addSubview(child.view)
        configure(child.view)
        child.didMove(toParent: self)
    }
}
