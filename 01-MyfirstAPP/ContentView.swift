//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

struct Word: Identifiable {
    let id = UUID()
    let term: String
    let meaning: String
    var isMemorized: Bool   // ← 変更（可変にする）
}

struct ContentView: View {
    // 配列を構造体でまとめる
    var words = [
        Word(term: "school", meaning: "学校", isMemorized: false),
        Word(term: "home", meaning: "家", isMemorized: false),
        Word(term: "desk", meaning: "机", isMemorized: true)
    ]
    var body: some View {
        
    }
}

#Preview {
    ContentView()
}
