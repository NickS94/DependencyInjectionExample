//
//  MockData.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import Foundation

/// Fake-Daten für die ToDo-Aufgaben und die Benutzerdaten
enum MockData {

    /// Fake ToDo-Aufgaben
    static let tasks: [ToDo] = [
        .init(userId: 123, id: 1, title: "test1", completed: false),
        .init(userId: 123, id: 2, title: "test2", completed: false),
        .init(userId: 123, id: 3, title: "test3", completed: true),
        .init(userId: 123, id: 4, title: "test4", completed: false),
        .init(userId: 123, id: 5, title: "test5", completed: true),
        .init(userId: 123, id: 6, title: "test6", completed: true),
        .init(userId: 123, id: 7, title: "test7", completed: true),
        .init(userId: 123, id: 8, title: "test8", completed: false)
    ]
    
    /// Fake Benutzerinformationen
    static let user = User(
        id: 123,
        name: "Maxine Musterfrau",
        username: "max420lol",
        email: "mmusterfrau@mail.de",
        phone: "030 123 456 78",
        website: "https://www.google.com"
    )
}

