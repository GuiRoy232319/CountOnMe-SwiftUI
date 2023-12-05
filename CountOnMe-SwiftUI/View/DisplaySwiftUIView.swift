//
//  DisplaySwiftUIView.swift
//  CountOnMe-SwiftUI
//
//  Created by guill roy on 04/12/2023.
//

import SwiftUI

struct DisplaySwiftUIView: View {
    @ObservedObject var calculator : CalculatorModel

    
    var body: some View {
        Text(calculator.number)
            .fontWeight(.bold)
            .font(.system(size: 50))
            .multilineTextAlignment(.leading)
            .lineLimit(0)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .font(.title)
            .foregroundColor(.white)
            .background(Color(hue: 1, saturation: 0.047, brightness: 0.27))
            .cornerRadius(20)
            .shadow(color: Color.gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 1, y: 1)
    }
}

#Preview {
    DisplaySwiftUIView(calculator: CalculatorModel())
}
