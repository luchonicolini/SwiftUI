//
//  File.swift
//  File
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import Foundation
import SwiftUI

struct Food: Identifiable {
    var id = UUID().uuidString
    var tilte: String
    var description: String
    var image: String
}

var foods = [
    Food(tilte: "Mar del plata", description: "hola hola hola", image: "p1"),
    Food(tilte: "Mar del plata", description: "hola hola hola", image: "p2"),
    Food(tilte: "Mar del plata", description: "hola hola hola", image: "p3")
    
]
