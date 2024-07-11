//
//  TasksView.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import SwiftUI

struct TasksView: View {
    
    @ObservedObject var tasksViewModel : TasksViewModel
    
    var body: some View {
        List(tasksViewModel.tasks) { task in
            HStack {
                Image(systemName: task.completed ? "checkmark.square" : "square")
                Text(task.title)
                    .lineLimit(1)
            }
        }
    }
}

#Preview {
    TasksView(tasksViewModel: TasksViewModel(repository: MockRepository()))
}
