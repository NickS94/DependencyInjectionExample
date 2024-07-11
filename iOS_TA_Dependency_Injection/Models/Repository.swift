//
//  Repository.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import Foundation

protocol RepositoryProtocol{
    func getTasks() async -> [ToDo]
    
    func getUser() async -> User?
}



class Repository:RepositoryProtocol {


    static let sharedInstance = Repository()
    
    
    /// Holt die ToDo-Aufgaben aus der API
    func getTasks() async -> [ToDo] {
        let response = try? await URLSession.shared.data(from: URL(string: "https://jsonplaceholder.typicode.com/todos")!)
        guard let data = response?.0 else {
            return []
        }
        guard let todos = try? JSONDecoder().decode([ToDo].self, from: data) else {
            return []
        }
        print(todos)
        return todos
    }
    
    /// Holt die BenutzerInformationen aus der API
    func getUser() async -> User? {
        let response = try? await URLSession.shared.data(from: URL(string: "https://jsonplaceholder.typicode.com/users/1")!)
        guard let data = response?.0 else {
            return nil
        }
        guard let user = try? JSONDecoder().decode(User.self, from: data) else {
            return nil
        }
        print(user)
        return user
    }
}
