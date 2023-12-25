//
//  ContentView.swift
//  AnimationsApp
//
//  Created by nika razmadze on 23.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 0
    @State private var colorChange = false
    
    var body: some View {
        
        Text("TBC IT Academy")
            .font(.title)
            .scaleEffect(1 + (animationAmount * 0.5))
            .foregroundColor(colorChange ? .red : .blue)
            .position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2  - (animationAmount * 75))
            .onAppear {
                withAnimation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                    self.animationAmount = 1
                    self.colorChange = true
                }
            }
    }
}

#Preview {
    ContentView()
}
