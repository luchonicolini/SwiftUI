//
//  Detail.swift
//  luchonic
//
//  Created by Luciano Nicolini on 30/11/2021.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
       
            
            GeometryReader { geometry in
                ZStack {
                    if geometry.frame(in: .global).minY <= 0 {
                        landmark.image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(y: geometry.frame(in: .global).minY/9)
                        .clipped()
                    } else {
                        landmark.image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                            .clipped()
                            .offset(y: -geometry.frame(in: .global).minY)
                    }
                }
            }
            .frame(height: 380)
    
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                  
                }

                HStack {
                    Text(landmark.park)
                    Spacer()
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
               
                Text("Av. Luro 2156")
                Text("Te. (0223) 491-5450/54")
      
                Divider()
               
                //Horario
                VStack(alignment: .leading) {
                    Text("Condiciones del Hotel")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        
                    HStack(spacing:10) {
                        Text("Horario de entrada: 14:00")
                            .font(.system(size: 19, weight: .regular, design: .rounded))
                            .lineLimit(nil)
                    
                        Spacer()
                        Text("Horario de Salida: 10:00")
                            .font(.system(size: 19, weight: .regular, design: .rounded))
                            .lineLimit(nil)
                    }
                }
                
                

                Text("Descripción")
                    .font(.system(size: 23, weight: .medium, design: .rounded))
                    .padding(.top, 10)
                Text(landmark.description)
                
                Divider()
                //Mapa
                VStack(alignment: .leading) {
                    Text("Ubicacion")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .padding(.top, 10)
                    MapView(coordinate: landmark.locationCoordinate)
                                 .ignoresSafeArea(edges: .top)
                                 .frame(height: 350)
                   
                    
                }
                
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        //background
        .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
