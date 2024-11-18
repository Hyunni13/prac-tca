//
//  Date+Tools.swift
//  PracTCA
//
//  Created by James on 11/18/24.
//

import Foundation

extension Date {
    
    func toString(format: String = "yyyyMMdd HH:mm:ss") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = .autoupdatingCurrent
        dateFormatter.timeZone  = .autoupdatingCurrent
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
    
}
