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
                    Button {
                        text.number.append("1")
                    } label: {
                        Text("1").frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35 )
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("1")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    Button {
                        text.number.append("4")
                    } label: {
                        Text("4")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("4")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    
                    Button {
                        text.number.append("7")
                    } label: {
                        Text("7")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("7")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
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
                    Button {
                        text.number.append("2")
                    } label: {
                        Text("2")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("2")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    Button {
                        text.number.append("5")
                    } label: {
                        Text("5")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("5")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    
                    Button {
                        text.number.append("8")
                    } label: {
                        Text("8")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("8")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    Button {
                        text.number.append("0")
                    } label: {
                        Text("0")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("0")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                }
                VStack{
                    Button {
                        text.number.append("3")
                    } label: {
                        Text("3")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("3")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    Button {
                        text.number.append("6")
                    } label: {
                        Text("6")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("6")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    
                    Button {
                        text.number.append("9")
                    } label: {
                        Text("9")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag("9")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                    Button {
                        text.number.append(".")
                    } label: {
                        Text(".")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70)
                            .foregroundColor(.white)
                            .fontWeight(.black)
                            .background(Color(hue: 1.0, saturation: 0.031, brightness: 0.833))
                            .hoverEffect()
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 35)
                                .stroke(Color.gray, lineWidth: 2).frame(width: 70))
                            .tag(".")
                            .shadow(color: Color.gray , radius: 10, x: 2, y: 2)
                    }
                    
                }
                VStack{
                    Button {
                        if text.number.first == "+"||text.stack.first == "-"||text.stack.first == "*"||text.stack.first == "/" {
                            text.number.removeFirst()
                        }
                        let temp = text.number
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
                            print(result)
                            text.stack.removeAll()
                            text.number = ""
                            text.stack.append(result)
                            text.number.append(result)
                        }
                        text.stack.append("/")
                        text.number.append("/")
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
                        if text.number.first == "+"||text.stack.first == "-"||text.stack.first == "*"||text.stack.first == "/" {
                            text.number.removeFirst()
                        }
                        let temp = text.number
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
                            print(result)
                            text.stack.removeAll()
                            text.number = ""
                            text.stack.append(result)
                            text.number.append(result)
                        }
                        text.stack.append("*")
                        text.number.append("*")
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
                        if text.number.first == "+"||text.stack.first == "-"||text.stack.first == "*"||text.stack.first == "/" {
                            text.number.removeFirst()
                        }
                        let temp = text.number
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
                        text.stack.append("+")
                        text.number.append("+")
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
                        if text.number.first == "+"||text.stack.first == "-"||text.stack.first == "*"||text.stack.first == "/" {
                            text.number.removeFirst()
                        }
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
                        text.stack.append("-")
                        text.number.append("-")
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
                if text.number.first == "+"||text.stack.first == "-"||text.stack.first == "*"||text.stack.first == "/" {
                    text.number.removeFirst()
                }
                let temp = text.number
                text.stack.append(temp)
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
    func showAlert(){
        let alertVC = UIAlertController(title: "Erreur", message: "Expression incorrecte", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
    }
}

#Preview {
    BoutonSwiftUIView(text: CalculatorModel())
}
