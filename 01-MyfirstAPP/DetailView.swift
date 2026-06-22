//
//  DetailView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/06/11.
//

import SwiftUI

struct DetailView: View {

    @Binding var task: Task

    var body: some View {

        Form {

            TextField(
                "タスク名",
                text: $task.name
            )

            TextField(
                "詳細",
                text: Binding(
                    get: { task.meaning ?? "" },
                    set: { task.meaning = $0 }
                )
            )

        }
        .navigationTitle("詳細")

    }

}
