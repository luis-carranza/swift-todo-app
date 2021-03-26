//
//  TaskViewController.swift
//  ToDoApp
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import Foundation
import SwiftUI

class TaskViewController: ObservableObject {
    
    // Temporal data holder. To be replaced by Database retrieved data.
    @Published var taskData : [TaskModel]
    
    init() {
        self.taskData = [
            TaskModel(id: UUID(), taskIsCompleted: false, taskOwner: "Panchito", taskDescription: "Walk the dog"),
            TaskModel(id: UUID(), taskIsCompleted: true, taskOwner: "Pablito ", taskDescription: "Do homework"),
            TaskModel(id: UUID(), taskIsCompleted: false, taskOwner: "He-Man", taskDescription: "Defeat Bad guys")
        ]
    }
}
