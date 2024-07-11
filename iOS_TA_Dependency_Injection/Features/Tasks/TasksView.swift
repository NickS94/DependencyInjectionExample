//
//  TasksView.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
        List(MockData.tasks) { task in
            HStack {
                Image(systemName: task.completed ? "checkmark.square" : "square")
                Text(task.title)
                    .lineLimit(1)
            }
        }
    }
}

#Preview {
    TasksView()
}
