//
//  ContentView.swift
//  01-MyfirstAPP
//
//  Created by 大石智広 on 2026/03/18.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            titleView
            countButton
            countText
            resetButton
        }
    }
    
    var titleView: some View {
        Text("100万回推したら\nいいことがある\nボタン")
            .bold()
            .font(.largeTitle)
            .multilineTextAlignment(.center)
    }
    
    var countButton: some View {
        Button("CountUp!!") {
            count += 1
        }
        .buttonStyle(.borderedProminent)
        .bold()
        .shadow(radius: 5)
    }
    
    var countText: some View {
        Text(String(count))
            .font(.system(size: 32, weight: .black))
            .foregroundStyle(.white)
            .padding()
            .background(.orange)
            .clipShape(.rect(cornerRadius: 20))
            .shadow(radius: 5)
    }
    var resetButton: some View{
        Button("RESET"){
            count = 0
        }
        .buttonStyle(.borderedProminent)
        .tint(.gray)
        .bold()
        .shadow(radius: 5)
    }
}

#Preview {
    ContentView()
}
