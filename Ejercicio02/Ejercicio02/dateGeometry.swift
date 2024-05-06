//
//  dateGeometry.swift
//  Ejercicio02
//
//  Created by Alejandro Vidal Gómez Alves on 6/5/24.
//

import Foundation
import SwiftUI

struct GeometryConstructor: Hashable{
        var name: String
        var imagename: String
}

var geometryData: [GeometryConstructor] = [
    GeometryConstructor( name: "Circulo", imagename: "circulo.jpg"),
    GeometryConstructor( name: "Cuadrado", imagename: "cuadrado"),
    GeometryConstructor( name: "Rectangulo", imagename: "Rectangulo")
]



