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
    
    private var taskDescription: String
    private var taskIsCompleted: Bool
    private var taskOwner: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
