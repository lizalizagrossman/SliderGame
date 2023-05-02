//
//  ContentView.swift
//  SliderGame
//
//  Created by Elizabeth on 02/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var value: Float = 50
    @State private var showingAlert = false
    @StateObject private var gameRules = GameRules()
    
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к: \(gameRules.targetValue)")
            SliderView(value: $value)
            VStack(spacing: 20) {
                ButtonView(title: "Проверь меня",
                           action: {showingAlert.toggle()}
                )
                    .alert(isPresented: $showingAlert) {
                        Alert(
                            title: Text("Your score"),
                            message: Text((gameRules.computeScore(currentValue: value)).formatted()),
                            dismissButton: .default(Text("Got it!"))
                        )
                            }
                ButtonView(title: "Начать заново", action: gameRules.restartGame )
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
