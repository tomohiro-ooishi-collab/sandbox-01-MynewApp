//
//  ContentView 2.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/04/27.
//


import SwiftUI

struct DetailView: View {
    @Binding var selectedTask: Task
    var body: some View {

        VStack(spacing: 20) {

            Text("詳細画面")
                .font(.title)

            TextField("タスク名", text: $selectedTask.name)
                .textFieldStyle(.roundedBorder)

            TextField(
                "詳細",
                text: Binding(
                    get: {
                        selectedTask.meaning ?? ""
                    },
                    set: {
                        selectedTask.meaning = $0
                    }
                )
            )
            .textFieldStyle(.roundedBorder)

            Toggle("完了", isOn: $selectedTask.isChecked)

            Spacer()
        }
        .padding()
        .navigationTitle("編集")
    }
}

