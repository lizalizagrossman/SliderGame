//
//  ButtonView.swift
//  SliderGame
//
//  Created by Elizabeth on 02/05/2023.
//

import SwiftUI

struct ButtonView: View {
    
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(title, action: action)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Проверь меня", action: {})
    }
}
