//
//  UITableView+Ext.swift
//  GHFolowers
//
//  Created by Marcelo De Araújo on 01/01/24.
//

import UIKit

extension UITableView {

    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }

    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
