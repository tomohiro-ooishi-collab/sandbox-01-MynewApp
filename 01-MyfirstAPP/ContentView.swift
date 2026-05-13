//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var name: String //Todoの名前
    var meaning: String? //ToDoの説明,詳細
    var deadLine:Date? //締め切り
    var isChecked: Bool   // ← チェックされたか
}


struct ContentView: View {
    @State var tasks: [Task] = [
        Task(name: "買い物", meaning: "牛乳", deadLine: nil, isChecked: false),
        Task(name: "課題", meaning: nil, deadLine: Date(), isChecked: false),
        Task(name: "運動", meaning: "ランニング30分", deadLine: nil, isChecked: true)
    ]
    var body: some View {
        NavigationStack{
            VStack{
                List($tasks){ $currentTask in
                    NavigationLink(
                        destination:DetailView(selectedTask:$currentTask)
                ){
                        HStack{
                            Text(currentTask.name)
                            if let meaning = currentTask.meaning{
                                Text(meaning)
                            }
                        }
                    }
                }
            }
            .toolbar {
                
                ToolbarItem(placement: .topBarTrailing) {
                    
                    NavigationLink {
                        
                        DetailView(
                            selectedTask: $tasks[tasks.count - 1]
                        )
                        
                    } label: {
                        
                        Image(systemName: "plus")
                    }
                    .simultaneousGesture(
                        TapGesture().onEnded {
                            
                            tasks.append(
                                Task(
                                    name: "",
                                    meaning: "",
                                    deadLine: nil,
                                    isChecked: false
                                )
                            )
                        }
                    )
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
