//
//  DateFormatter+Extension.swift
//  PillReminder
//
//  Created by Michelle Grover on 7/11/23.
//

import Foundation

extension DateFormatter {
    static let dateOnly: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
}
