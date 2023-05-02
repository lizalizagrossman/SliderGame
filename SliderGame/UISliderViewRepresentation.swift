//
//  UISliderViewRepresentation.swift
//  SliderGame
//
//  Created by Elizabeth on 02/05/2023.
//

import SwiftUI

struct UISliderViewRepresentation: UIViewRepresentable {
    
    @Binding var value: Float
    @Binding var alpha: CGFloat
    
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: alpha)
        slider.addTarget(
                context.coordinator,
                action: #selector(Coordinator.sliderMoved),
                for: .valueChanged
            )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = value
        uiView.alpha = alpha
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value, alpha: $alpha)
    }
    
}

// MARK: - Coordinator
extension UISliderViewRepresentation {
    final class Coordinator: NSObject {
        @Binding var value: Float
        @Binding var alpha: CGFloat
        
        init(value: Binding<Float>, alpha: Binding<CGFloat> ) {
            self._value = value
            self._alpha = alpha
        }
        
        @objc func sliderMoved(_ sender: UISlider) {
            value = (sender.value).rounded()
            alpha = (sender.alpha)
        }
    }
}

struct UISliderViewRepresentation_Previews: PreviewProvider {
    static var previews: some View {
        UISliderViewRepresentation(value: .constant(10), alpha: .constant(1.0))
    }
}

