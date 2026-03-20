//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("mainCharacter1")
            .resizable()
            .scaledToFit()
        Text("Hello, swift!")
    }

    var chara2: some View{
        VStack {
            Image("mainCharacter2")
                .resizable()
                .scaledToFit()
            Text("Hello, swift!")
        }
    }
#Preview {
    ContentView()
}
