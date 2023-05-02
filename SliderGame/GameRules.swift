//
//  GameRules.swift
//  SliderGame
//
//  Created by Elizabeth on 02/05/2023.
//

import Foundation
import Combine

final class GameRules {
    
    var targetValue = Int.random(in: 0...100)
    var opacity: Float = 0.0
    var score: Float = 0
    
    func computeScore(currentValue: Float) -> Float {
        let difference = abs(targetValue - Int(currentValue))
        score = Float(100 - difference)
        return score
    }
    
}
