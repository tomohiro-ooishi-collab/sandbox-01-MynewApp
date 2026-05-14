//
//  ContentView 2.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/04/27.
//


import SwiftUI

struct DetailView: View {
    var selectedTask: Task
    var body: some View {

        VStack(spacing: 20) {

            Text("詳細画面")
                .font(.title)

            Text(selectedTask.name)

            if let meaning = selectedTask.meaning{
                Text(meaning)
            }
        }
        .padding()
        .navigationTitle("編集")
    }
}

