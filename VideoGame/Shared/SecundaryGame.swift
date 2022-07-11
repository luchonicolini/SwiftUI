//
//  SecundaryGame.swift
//  VideoGame
//
//  Created by Luciano Nicolini on 10/07/2022.
//

import SwiftUI

struct SecundaryGame: View {
    var videogame: VideoGame
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(videogame.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .frame(width: 300, height: 400)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Spacer(minLength: 0)
            
            if videogame.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Label("Descuento", systemImage: "flame.fill")
                    Spacer()
                }
                
                .padding()
                .font(Font.headline.smallCaps())
                .background(Color.red)
                .foregroundColor(.yellow)
            }
        }
        .navigationTitle(videogame.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SecundaryGame_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SecundaryGame(videogame: TestData[0])
        }
    }
}
