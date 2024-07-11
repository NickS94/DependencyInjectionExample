//
//  ToDo.swift
//  iOS_TA_Dependency_Injection
//
//  Created by Leonid Riedel on 29.02.24.
//

import Foundation

/// Repräsentiert eine ToDo-Aufgabe aus der API
struct ToDo: Decodable, Identifiable {
    /// ID des Users
    let userId: Int

    /// ID der ToDo-Aufgabe
    let id: Int

    /// Der Titel der ToDo-Aufgabe
    let title: String

    /// On die ToDo-Aufgabe abgeschlossen ist
    let completed: Bool
}
