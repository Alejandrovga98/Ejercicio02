//
//  ContentView.swift
//  Ejercicio02
//
//  Created by Alejandro Vidal Gómez Alves on 1/5/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        Text("Figuras geometricas")
            .bold()
            .padding()
        NavigationView {
            List(geometryData, id: \.self){ Geometry in
                NavigationLink(destination: DetailView(Geometry: Geometry)) {
                    Text(Geometry.name)
                    Image(Geometry.imagename)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)                }
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
