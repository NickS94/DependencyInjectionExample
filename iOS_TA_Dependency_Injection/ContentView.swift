//
//  ContentView.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import SwiftUI

struct ContentView: View {

    @StateObject var userViewModel = UserViewModel(repository: Repository.sharedInstance)
    @StateObject var tasksViewModel = TasksViewModel(repository: Repository.sharedInstance)
    
    var body: some View {
        TabView {
            TasksView(tasksViewModel: tasksViewModel)
                .tabItem {
                    Label("Tasks", systemImage: "checkmark.square.fill")
                }
            
            UserView(userViewModel: userViewModel)
                .tabItem {
                    Label("User", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
