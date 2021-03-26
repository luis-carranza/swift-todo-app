//
//  TaskRowView.swift
//  ToDoApp
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

struct TaskRowView: View {
    
    @State var task: TaskModel
    
    var body: some View {
        GeometryReader { gp in
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                    Text(task.taskDescription)
                        .padding(.all, 20)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: gp.size.width * 0.7, alignment: .leading)
                    Spacer()
                    Toggle(isOn: $task.taskIsCompleted) {
                        
                    }.padding(.all, 10)
                    .frame(width: 60)
                    
                }) // HStack
            }) //VStack
            
        }//GeometryReader
        .frame(height: 100)
    }
}

struct TaskRowView_Previews: PreviewProvider {
    
    static var  id = UUID()
    static var previews: some View {
        TaskRowView(task: TaskModel(id: id, taskIsCompleted: false, taskOwner: "Emeterio", taskDescription: "Work Hard because I am a good worker and I don't have social live")).previewLayout(.sizeThatFits)
    }
}
