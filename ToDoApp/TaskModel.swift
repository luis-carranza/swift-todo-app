//
//  TaskModel.swift
//  ToDoApp
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import Foundation
import SwiftUI

struct TaskModel: Identifiable, Hashable {
    
    var id: UUID
    
    var taskDescription: String
    var taskIsCompleted: Bool
    var taskOwner: String
    
    init(id: UUID, taskIsCompleted: Bool, taskOwner: String, taskDescription: String) {
        
        self.id = id
        self.taskDescription    = taskDescription
        self.taskOwner          = taskOwner
        self.taskIsCompleted    = taskIsCompleted
    }
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
