//
//  ContentView.swift
//  PillReminder
//
//  Created by Michelle Grover on 7/11/23.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                PrescriptionView()
                    .tabItem {
                        Image(systemName: "pills.fill")
                        Text("Prescription")
                    }
            }
        }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
