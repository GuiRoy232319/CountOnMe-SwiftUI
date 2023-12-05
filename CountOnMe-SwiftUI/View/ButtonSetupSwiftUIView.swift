//
//  ButtonSetupSwiftUIView.swift
//  CountOnMe-SwiftUI
//
//  Created by guill roy on 04/12/2023.
//

import SwiftUI

struct ButtonSetupSwiftUIView: View {
    @ObservedObject var text: CalculatorModel
    internal var number: String
    internal var hue: Double
    internal var saturation: Double
    internal var brigthness: Double
    
    var body: some View {
        Button {
            text.number.append(number)
        } label: {
            Text(number).frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                .foregroundColor(.white)
                .fontWeight(.black)
                .background(Color(hue: hue, saturation: saturation, brightness: brigthness))
                .hoverEffect()
                .clipShape(Circle())
                .overlay(RoundedRectangle(cornerRadius: 35 )
                    .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                .tag(number)
                .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
        }
    }
}

#Preview {
    ButtonSetupSwiftUIView(text: CalculatorModel(), number: "1", hue: 1.0, saturation: 0.031, brigthness: 0.833)
}
