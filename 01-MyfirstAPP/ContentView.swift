//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

//構造体の定義 型の変更や項目の追加も可能
struct Item: Identifiable {
    let id = UUID()
    let term: String //項目名
    let meaning: String //意味や説明,詳細
    var isChecked: Bool   // ← チェックされたか
}

struct ContentView: View {
    // データ配列を構造体でまとめる
    var items = [
        Item(term: "見本1", meaning: "見本の説明1", isChecked: false),
        Item(term: "見本2", meaning: "見本の説明2", isChecked: false)
    ]
    var body: some View {
        //UIをここに書こう
    }
}

#Preview {
    ContentView()
}
