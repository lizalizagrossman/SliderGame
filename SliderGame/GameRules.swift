//
//  GameRules.swift
//  SliderGame
//
//  Created by Elizabeth on 02/05/2023.
//

import Foundation
import Combine

final class GameRules: ObservableObject {
    
    var targetValue = Int.random(in: 0...100)
    var opacity: Float = 0.0
    var score = 0
    let objectWillChange = ObservableObjectPublisher()
    
    func computeScore(currentValue: Float) -> Int {
        let difference = abs(targetValue - Int(currentValue))
        score = 100 - difference
        return score
    }
    
    func restartGame() {
        targetValue = Int.random(in: 0...100)
        objectWillChange.send()
    }
}
