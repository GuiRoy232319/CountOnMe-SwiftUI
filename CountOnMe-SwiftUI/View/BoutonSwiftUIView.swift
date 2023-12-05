//
//  BoutonSwiftUIView.swift
//  CountOnMe-SwiftUI
//
//  Created by guill roy on 04/12/2023.
//

import SwiftUI

struct BoutonSwiftUIView: View {
    @ObservedObject var text: CalculatorModel
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    ButtonSetupSwiftUIView(text: text, number: "1", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                    ButtonSetupSwiftUIView(text: text, number: "4", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                    
                    ButtonSetupSwiftUIView(text: text, number: "7", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                    
                    Button {
                        text.number = ""
                        text.stack = []
                    } label: {
                        Text("C")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 0.768, saturation: 0.627, brightness: 0.966))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("C")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                }
                VStack{
                    ButtonSetupSwiftUIView(text: text, number: "2", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                    ButtonSetupSwiftUIView(text: text, number: "5", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                    ButtonSetupSwiftUIView(text: text, number: "8", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                    ButtonSetupSwiftUIView(text: text, number: "0", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                }
                VStack{
                    ButtonSetupSwiftUIView(text: text, number: "3", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                    
                    ButtonSetupSwiftUIView(text: text, number: "6", hue: 1.0, saturation: 0.031, brigthness: 0.833)
 
                    ButtonSetupSwiftUIView(text: text, number: "9", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                    
                    ButtonSetupSwiftUIView(text: text, number: ".", hue: 1.0, saturation: 0.031, brigthness: 0.833)
                }
                VStack{
                    Button {
                        check()
                       calculate(symbol: "/")
                    } label: {
                        Text("/")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 0.584, saturation: 0.445, brightness: 0.957))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("/")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    Button {
                        check()
                        calculate(symbol: "*")
                    } label: {
                        Text("*")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 0.341, saturation: 0.445, brightness: 0.957))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("*")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    Button {
                       check()
                        calculate(symbol: "+")
                    } label: {
                        Text("+")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 0.975, saturation: 0.64, brightness: 0.946))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("+")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    Button {
                       check()
                        calculate(symbol: "-")
                    } label: {
                        Text("-")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 0.085, saturation: 0.718, brightness: 0.931))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("-")
                    }.shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            Button {
                check()
                let temp = text.number
                text.stack.append(temp)
                print(text.stack)
                text.number = ""
                guard let result = text.calculate(expression: text.stack) else {
                    showAlert()
                    text.stack.removeAll()
                    text.number = ""
                    return
                }
                text.stack.removeAll()
                text.stack.append(result)
                text.number.append("= \(result)")
                
                
            } label: {
                Text("=")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 80 , maxHeight: .infinity)
                    .font(.system(size: 30))
                    .background(Color(hue: 0.15, saturation: 0.702, brightness: 0.971))
                    .clipShape(Capsule())
                    .overlay(RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.gray, lineWidth: 2))
                    .foregroundColor(.white)
                    .fontWeight(.black)
            }
            .hoverEffect()
            .tag("=")
            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
        }.frame(minWidth: 0, maxWidth: .infinity)
    }
    private func showAlert(){
        let alertVC = UIAlertController(title: "Erreur", message: "Expression incorrecte", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
    }
    private func check(){
        if text.number.first == "+"||text.number.first == "-"||text.number.first == "*"||text.number.first == "/" {
            text.number.removeFirst()
        }
    }
    private func calculate(symbol: String){
        let temp = text.number
        print(temp)
        text.stack.append(temp)
        print(text.stack)
        text.number = ""
        if text.stack.count > 4{
            guard let result = text.calculate(expression: text.stack) else {
                showAlert()
                text.stack.removeAll()
                text.number = ""
                return
            }
            text.stack.removeAll()
            text.number = ""
            text.stack.append(result)
            text.number.append(result)
        }
        text.stack.append(symbol)
        text.number.append(symbol)
        
    }
}

#Preview {
    BoutonSwiftUIView(text: CalculatorModel())
}
