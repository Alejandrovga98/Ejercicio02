//
//  DetailView.swift
//  Ejercicio02
//
//  Created by Alejandro Vidal Gómez Alves on 6/5/24.
//

import SwiftUI

struct DetailView: View {
    var Geometry = GeometryConstructor.init(name: "Circulo", imagename: "circulo.jpg")
    @State var userInput = ""
    @State var userInput2 = ""
    var text = ""
    @State var textResult = ""
    var body: some View {
        VStack{
            Text(Geometry.name)
                .bold()
                .font(.title)
                .padding(.top, -300)
            Image(Geometry.imagename)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding(.top, -250)
            if(Geometry.name == "Circulo"){
                TextField("Introducir radio del circulo", text: $userInput)
                .keyboardType(.numberPad)
                .padding()
            }else if(Geometry.name == "Cuadrado"){
                TextField("Introducir lado del cuadrado", text: $userInput)
                    .keyboardType(.numberPad)
                    .padding()
            }else if(Geometry.name == "Rectangulo"){
                HStack{
                    TextField("Introducir lado base", text: $userInput)
                        .keyboardType(.numberPad)
                        .padding()
                    TextField("Introducir lado altura", text: $userInput2)
                        .keyboardType(.numberPad)
                        .padding()                }
            }
            Button(action: {
                
                if(Geometry.name == "Circulo"){
                    if let radius = Double(userInput){
                        let area = CircleArea(Radio: radius)
                        textResult = "El area del circulo es \(area)"
                    }
                }
                else if (Geometry.name == "Cuadrado"){
                    if let lado = Double(userInput){
                        let area = SquareAreaCalculator(lado: lado)
                        textResult = "El area del Cuadrado es \(area)"
                        }
                    }
                else if(Geometry.name == "Rectangulo"){
                    if let base = Double(userInput), let height = Double(userInput2){
                        let area = RectangleAreaCalculator(base: base, height: height)
                        textResult = "El area del Rectangulo es \(area)"
                        }
                    }
            },
                   label: {
                Text("Calcular")
            })
            Text(textResult)
                .padding(.top, 10)
        }
    }
}

#Preview {
    DetailView()
}
