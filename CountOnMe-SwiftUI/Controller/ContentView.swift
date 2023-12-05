//
//  ContentView.swift
//  CountOnMe-SwiftUI
//
//  Created by guill roy on 04/12/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
@StateObject private var calculator = CalculatorModel()
    
    var body: some View {
        DisplaySwiftUIView(calculator: calculator)
            .padding(.all, 10)
        Divider()
        BoutonSwiftUIView(text: calculator)
            .padding(.all, 10)
    }
}

#Preview {
    ContentView()
}
