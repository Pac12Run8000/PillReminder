//
//  WeekView.swift
//  PillReminder
//
//  Created by Michelle Grover on 7/11/23.
//

import SwiftUI

struct WeekView: View {
    let weekDays = ["Su", "M", "T", "W", "Th", "F", "Sa"]
    let currentWeekDates: [Date]
    
    init() {
        var calendar = Calendar.current
        calendar.firstWeekday = 1 // Make Sunday the first day of the week
        let today = Date()
        let startOfWeek = calendar.date(from: calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: today))!
        currentWeekDates = (0..<7).map { calendar.date(byAdding: .day, value: $0, to: startOfWeek)! }
    }
    
    var body: some View {
        HStack {
            ForEach(0..<7) { index in
                VStack {
                    Text(weekDays[index])
                    Text("\(currentWeekDates[index].day)")
                }
                .font(.system(size: 9))
                .padding()
                .background(currentWeekDates[index].isToday ? Color.blue : Color.clear)
                .foregroundColor(currentWeekDates[index].isToday ? .white : .black)
                .cornerRadius(10)
            }
        }
        .font(.title)
        .padding()
         Text("Today's Date: \(Date(), formatter: DateFormatter.dateOnly)")
            .font(.system(size: 15))
                       .padding(.top)
    }
}
