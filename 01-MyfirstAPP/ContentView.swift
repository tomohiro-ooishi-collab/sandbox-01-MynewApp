//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            var isMain = true
            Button("Change"){
                isMain.toggle()
                print(isMain)
                print(isMain ? "Hello":"Good bye")
            }
        }
    }
}
#Preview {
    ContentView()
}
