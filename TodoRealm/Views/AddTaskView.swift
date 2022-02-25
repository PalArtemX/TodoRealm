//
//  AddTaskView.swift
//  TodoRealm
//
//  Created by Artem Paliutin on 24.02.2022.
//

import SwiftUI

struct AddTaskView: View {
    
    @State private var title = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var realManager: RealmManager
    
    var body: some View {
        VStack {
            Text("Add Task")
                .font(.title)
            
            TextField("Enter your task here", text: $title)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Add Task") {
                if !title.isEmpty {
                    realManager.addTask(taskTitle: title)
                }
                dismiss()
            }
            .buttonStyle(.bordered)
        }
    }
}









struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
