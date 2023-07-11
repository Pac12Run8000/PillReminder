//
//  PillReminderView.swift
//  PillReminder
//
//  Created by Michelle Grover on 7/11/23.
//

import SwiftUI



struct PillReminderView: View {
    @State private var selectedSegment = 0
    private let segments = ["Reminders", "Medications"]
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedSegment) {
                ForEach(0..<segments.count) { index in
                    Text(self.segments[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.blue)
                .offset(x: selectedSegment == 0 ? -UIScreen.main.bounds.width / 4 : UIScreen.main.bounds.width / 4)
                .animation(.spring())
            
            Spacer()
        }
    }
}

struct PillReminderView_Previews: PreviewProvider {
    static var previews: some View {
        PillReminderView()
    }
}

