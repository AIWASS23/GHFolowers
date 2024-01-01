//
//  Date+Ext.swift
//  GHFolowers
//
//  Created by Marcelo de Araújo on 29/12/2023.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
