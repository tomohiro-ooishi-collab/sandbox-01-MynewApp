//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

struct ContentView: View {
    let names = ["りんご", "バナナ", "ぶどう"]
    let descriptions = ["赤い果物", "黄色い果物", "小さい果物"]
    
    var body: some View {
        List(0...2, id: \.self) { index in
            VStack {
                Text(names[index])
                Text(descriptions[index])
            }
        }
    }
}
#Preview {
    ContentView()
}
