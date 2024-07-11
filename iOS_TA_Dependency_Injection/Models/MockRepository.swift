//
//  MockRepository.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Nikos Stauropoulos on 11.07.24.
//

import Foundation


class MockRepository : RepositoryProtocol{
    
    
    func getTasks() async -> [ToDo] {
        MockData.tasks
    }
    
    func getUser() async -> User? {
        MockData.user
    }
    
    
}
