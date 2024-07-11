//
//  ContentView.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TasksView()
                .tabItem {
                    Label("Tasks", systemImage: "checkmark.square.fill")
                }
            
            Text("User")
                .tabItem {
                    Label("User", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
