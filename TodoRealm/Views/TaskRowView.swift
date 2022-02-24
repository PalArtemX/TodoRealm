//
//  TaskRowView.swift
//  TodoRealm
//
//  Created by Artem Paliutin on 24.02.2022.
//

import SwiftUI

struct TaskRowView: View {
    let task: String
    let completed: Bool
    
    var body: some View {
        HStack {
            Image(systemName: completed ? "circle.inset.filled" : "circle")
            
            Text(task)
        }
    }
}










struct TaskRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TaskRowView(task: "Hello", completed: true)
                .previewLayout(.sizeThatFits)
                .padding()
            TaskRowView(task: "Hello", completed: false)
                .preferredColorScheme(.dark)
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
