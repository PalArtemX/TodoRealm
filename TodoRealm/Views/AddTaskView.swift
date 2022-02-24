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
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.title)
            
            TextField("Enter your task here", text: $title)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Add Task") {
                dismiss()
            }
            .buttonStyle(.bordered)
        }
    }
}









struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
