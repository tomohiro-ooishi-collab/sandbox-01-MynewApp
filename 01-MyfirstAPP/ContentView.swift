//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("mainCharacter1")
                .resizable()
                .scaledToFit()
            Text("これは主人公です")
            
        }
    }
}

#Preview {
    ContentView()
}
