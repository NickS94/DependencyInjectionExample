//
//  TasksViewModel.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import Foundation

class TasksViewModel: ObservableObject {
    @Published var tasks: [ToDo] = []
    
    private let repository = Repository()
    
    /// Holt die ToDo-Aufgaben vom Repository
    @MainActor
    func fetchTasks() {
        Task {
            tasks = await repository.getTasks()
        }
    }
}
