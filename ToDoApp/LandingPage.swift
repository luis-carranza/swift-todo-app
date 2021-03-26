//
//  LandingPage.swift
//  ToDoApp
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

struct LandingPage: View {
    
    @ObservedObject var taskControl: TaskViewController = TaskViewController()
    
    var body: some View {
        List(taskControl.taskData) {task in
            
            TaskRowView(task: task)
            Divider()
        }
        
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
