//
//  Date+Extensions.swift
//  PillReminder
//
//  Created by Michelle Grover on 7/11/23.
//

import SwiftUI

extension Date {
    var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    var isToday: Bool {
        return Calendar.current.isDateInToday(self)
    }
}
