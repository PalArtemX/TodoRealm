//
//  TasksView.swift
//  TodoRealm
//
//  Created by Artem Paliutin on 24.02.2022.
//

import SwiftUI

struct TasksView: View {
    
    @EnvironmentObject var realManager: RealmManager
    
    var body: some View {
        VStack {
            Text("My Task")
                .font(.headline)
            
            List {
                ForEach(realManager.tasks, id: \.id) { task in
                    
                    if !task.isInvalidated {
                        TaskRowView(task: task.title, completed: task.completed)
                            .onTapGesture {
                                realManager.updateTask(id: task.id, completed: !task.completed)
                            }
                            .swipeActions(edge: .trailing) {
                                Button(role: .destructive) {
                                    realManager.deleteTask(id: task.id)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                    }
                }
            }
        }
    }
}









struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealmManager())
    }
}
