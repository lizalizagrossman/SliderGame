//
//  SliderView.swift
//  SliderGame
//
//  Created by Elizabeth on 02/05/2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Float
    @State var alpha: CGFloat = 1.0
    
    var body: some View {
        VStack {
            HStack {
                Text("0")
                UISliderViewRepresentation(value: $value, alpha: $alpha)
                Text(value.formatted())
            }
            .padding()
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(50), alpha: 1.0)
    }
}
