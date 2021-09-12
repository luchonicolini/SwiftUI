//
//  rectractive.swift
//  rectractive
//
//  Created by Luciano Nicolini on 10/09/2021.
//

import SwiftUI

struct rectractive: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                HStack {
                    Text("Centros Recreativos")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top,15)
                .padding(.bottom,-20)
                //List
                
                ForEach(CardData) { mund in
                    NavigationLink(destination: DetailView(info: mund)) {
                    CardItem(cardate: mund)
                            
                    }
                }
                Footer()
            })
                .navigationBarTitleDisplayMode(.inline)
                .navigationColor(background: UIColor.white)
                .toolbar {
                    ToolbarItem(placement: .principal){
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 30, alignment: .center)
                        }
                    }
                    
                }
        }
    }
}

struct rectractive_Previews: PreviewProvider {
    static var previews: some View {
        rectractive()
    }
}


//Model
struct Card: Identifiable {
    var id = UUID()
    var tilte:String
    var name:String
    var subtilte:String
    var image:String
}

var CardData = [
    Card(tilte: "CAMPO DE MAYO - PCIA DE BUENOS AIRES", name: "AV. GRAL. JUAN GREGORIO LEMOS 733, (CRUCE DE RUTA NACIONAL 8 Y 202)", subtilte: "CAMPO DE DEPORTES", image: "lakemcdonald"),
   
    Card(tilte:"ZÁRATE", name: "CRUCERO ARA GRAL BELGRANO Y RIVADAVIA - ZÁRATE - BS AS", subtilte: "CENTRO RECREATIVO HÉROES DE MALVINAS", image: "twinlake")
]
