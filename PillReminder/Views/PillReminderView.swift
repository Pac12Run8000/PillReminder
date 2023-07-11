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
                .frame(width: UIScreen.main.bounds.width / 3, height: 2)
                .foregroundColor(.blue)
                .offset(x: selectedSegment == 0 ? -UIScreen.main.bounds.width / 6 : UIScreen.main.bounds.width / 6)
                .animation(.spring())
            
            if selectedSegment == 0 {
                            RemindersView()
                        } else {
                            MedicationsView()
                        }
            Spacer()
            
        }
    }
}

struct PillReminderView_Previews: PreviewProvider {
    static var previews: some View {
        PillReminderView()
    }
}

