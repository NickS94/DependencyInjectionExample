//
//  UserViewModel.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var user: User?
    
    private let repository : RepositoryProtocol
    
    
    init(repository:RepositoryProtocol){
        self.repository = repository
    }
    
    /// Holt die Benutzer-Informationen aus dem Repository
    func fetchUser() {
        Task {
            user = await repository.getUser()
        }
    }
}
