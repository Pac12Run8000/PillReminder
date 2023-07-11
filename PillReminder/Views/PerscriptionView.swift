//
//  PerscriptionView.swift
//  PillReminder
//
//  Created by Michelle Grover on 7/11/23.
//

import SwiftUI

struct PrescriptionView: View {
    @State private var showingPillReminderView = false
    var body: some View {
        VStack {
                        NavigationLink(destination: PillReminderView()) {
                            HStack {
                                Image(systemName: "clock.fill")
                                Text("Perscription Pill Reminder")
                            }
                        }
                        .buttonStyle(CustomButtonStyle())
            
                    Button(action: {
                        showingPillReminderView = true
                    }) {
                        HStack {
                            Image(systemName: "clock.fill")
                            Text("Perscription Pill Reminder")
                        }
                    }
                    .buttonStyle(CustomButtonStyle())
                    .sheet(isPresented: $showingPillReminderView) {
                        PillReminderView()
                    }
                    
                    Button(action: {
                        print("Perscription History button tapped")
                    }) {
                        HStack {
                            Image(systemName: "book.fill")
                            Text("Perscription History")
                        }
                    }
                    .buttonStyle(CustomButtonStyle())
                    
                    Button(action: {
                        print("Submit Insurance Card button tapped")
                    }) {
                        HStack {
                            Image(systemName: "creditcard.fill")
                            Text("Submit Insurance Card")
                        }
                    }
                    .buttonStyle(CustomButtonStyle())
                    
                    Button(action: {
                        print("Pharmacy Chat button tapped")
                    }) {
                        HStack {
                            Image(systemName: "message.fill")
                            Text("Pharmacy Chat")
                        }
                    }
                    .buttonStyle(CustomButtonStyle())
                }
                .padding()
            
    }
}


