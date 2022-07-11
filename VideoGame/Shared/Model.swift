//
//  Model.swift
//  VideoGame
//
//  Created by Luciano Nicolini on 10/07/2022.
//

import SwiftUI

struct VideoGame: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
    var isSpicy: Bool = false
    var numeros: Int
    
    //var imageName: String { return name }
}

let TestData = [
    VideoGame(name: "Red Dead Redemption", imageName: "b1", description: "Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego", numeros: 10),
    VideoGame(name: "The Elder Scrolls V", imageName: "b2", description: "The Elder Scrolls V: Skyrim es un ARPG del tipo mundo abierto desarrollado por Bethesda Game Studios y publicado por Bethesda Softworks", numeros: 10),
    VideoGame(name: "The Elder Scrolls V", imageName: "b1", description: "The Elder Scrolls V: Skyrim es un ARPG del tipo mundo abierto desarrollado por Bethesda Game Studios y publicado por Bethesda Softworks", numeros: 10),
    VideoGame(name: "The Elder Scrolls V", imageName: "b2", description: "The Elder Scrolls V: Skyrim es un ARPG del tipo mundo abierto desarrollado por Bethesda Game Studios y publicado por Bethesda Softworks", numeros: 10),
    VideoGame(name: "The Elder Scrolls V", imageName: "b1", description: "The Elder Scrolls V: Skyrim es un ARPG del tipo mundo abierto desarrollado por Bethesda Game Studios y publicado por Bethesda Softworks", numeros: 10),
    VideoGame(name: "The Elder Scrolls V", imageName: "b2", description: "The Elder Scrolls V: Skyrim es un ARPG del tipo mundo abierto desarrollado por Bethesda Game Studios y publicado por Bethesda Softworks", numeros: 10)
]


class VideoGameStore: ObservableObject {
    @Published var videogames: [VideoGame]
   
    init(videogames: [VideoGame] = []) {
        self.videogames = videogames
    }
}
let TestStore = VideoGameStore(videogames: TestData)
