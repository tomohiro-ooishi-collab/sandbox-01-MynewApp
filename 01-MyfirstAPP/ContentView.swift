//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var meaning: String?
    var deadLine: Date?
    var isChecked: Bool
}

struct ContentView: View {

    @State private var tasks: [Task] = []

    @State private var selectedTaskID: UUID?

    var body: some View {

        NavigationStack {

            List {

                ForEach(tasks.indices, id: \.self) { index in

                    NavigationLink(
                        tasks[index].name.isEmpty
                        ? "（未入力）"
                        : tasks[index].name
                    ) {
                        DetailView(task: $tasks[index])
                    }

                }

            }
            .navigationTitle("ToDo一覧")
            .toolbar {

                ToolbarItem(placement: .topBarTrailing) {

                    Button {

                        let newTask = Task(
                            name: "",
                            meaning: "",
                            deadLine: nil,
                            isChecked: false
                        )

                        tasks.append(newTask)
                        selectedTaskID = newTask.id

                    } label: {
                        Image(systemName: "plus")
                    }

                }

            }
            .navigationDestination(item: $selectedTaskID) { taskID in

                if let index = tasks.firstIndex(where: { $0.id == taskID }) {
                    DetailView(task: $tasks[index])
                }

            }

        }

    }

}


#Preview {
    ContentView()
}
