//
//  HomeView.swift
//  TodoRealm
//
//  Created by Artem Paliutin on 24.02.2022.
//

import SwiftUI

struct HomeView: View {
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                TasksView()
                Button("Add Task") {
                    showAddTaskView.toggle()
                }
                .buttonStyle(.bordered)
            }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
