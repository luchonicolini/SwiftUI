//
//  File.swift
//  File
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct Box {
    var id: Int
    let tilte,imageUrl: String
}

struct Servicio: View {
   
    let boxes:[Box] = [
        Box(id: 0, tilte: "Cajas de Seguridad", imageUrl: "b1"),
        Box(id: 1, tilte: "Confiteria", imageUrl: "b3"),
        Box(id: 2, tilte: "Servicio de Emergencia", imageUrl: "b4"),
        Box(id: 3, tilte: "Servicio de Lavanderia", imageUrl: "b5"),
        Box(id: 4, tilte: "Restaurant", imageUrl: "b6")
    ]
    
    var body: some View {
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    ForEach(boxes, id: \.id) {
                    box in
                    BoxView(box: box)
                    }
                }
                
            }
            
    }
    
}


    struct BoxView:View {
        let box: Box
        var body: some View {
            VStack {
                Image(box.imageUrl)
                    .resizable()
                    .frame(width: 40, height: 40)
                Text(box.tilte)
                    .font(.custom("AvenirNext-Regular", size: 18))
                    .padding(.top,10)
                    
            }
            .frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(10)
            
    
        }
    }

struct Servicio_Previews: PreviewProvider {
    static var previews: some View {
        Servicio()
    }
  }

