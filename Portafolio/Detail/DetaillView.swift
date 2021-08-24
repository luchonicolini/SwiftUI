//
//  File.swift
//  File
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct DetaillView: View {
    
    var landmark: Landmark
   
    var body: some View {
        ScrollView {
            //imageview
            GeometryReader { geometry in
                ZStack {
                    if geometry.frame(in: .global).minY <= 0 {
                        Image(landmark.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(y: geometry.frame(in: .global).minY/9)
                        .clipped()
                    } else {
                        Image(landmark.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                            .clipped()
                            .offset(y: -geometry.frame(in: .global).minY)
                    }
                }
            }
                .frame(height: 400)
            VStack(alignment: .leading) {
            
                VStack(alignment: .leading){
                    Text(landmark.name)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .foregroundColor(.primary)
                }
                //MiniINFO
                Text("Av. Luro 2156 • Te. (0223) 491-5450/54")
                    .font(.system(size: 13, weight: .bold, design: .rounded))
                    .foregroundColor(.orange)
                    .padding(.top, 10)
                
                VStack(alignment: .center) {
                    Text("Condiciones del Hotel")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .padding(.top, 10)
                    
                }
                //Horario
                HStack(spacing:10) {
                    Text("Horario de entrada: 13:10")
                        .font(.custom("AvenirNext-Regular", size: 20))
                        .lineLimit(nil)
                        .padding(.top, 3)
                    Text("Horario de Salida: 13:10")
                        .font(.custom("AvenirNext-Regular", size: 20))
                        
                        .lineLimit(nil)
                        .padding(.top, 3)
                }
                //Comodidades
                VStack(alignment: .leading) {
                    Text("Comodidades")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .padding(.top, 10)
                    HStack {
                        Servicio()
                            .padding(.top,10)
                    }
                    
                }
                
                
                //TIDescripcion
                VStack(alignment: .leading) {
                    Text("Descripción")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .padding(.top, 10)
                }
                //Descripcion
                Text(landmark.description)
                    .font(.custom("AvenirNext-Regular", size: 20))
                    .lineLimit(nil)
                    .padding(.top, 3)
            }
                .frame(width: 350)
        }
            .edgesIgnoringSafeArea(.top)
        
    }
}

struct DetaillView_Previews: PreviewProvider {
    static var previews: some View {
        DetaillView(landmark: landmarks[0])
    }
}

