//
//  Clima.swift
//  New
//
//  Created by Luciano Nicolini on 16/03/2021.
//

import SwiftUI

struct Clima: View {
    var body: some View {
        ZStack { //blackground
            backgroundView(topColor: Color("coloresrgb"), buttomColor: .red)
            VStack { //Text medium
                cityName(cityName: "Cupertino,CA")
                VStack(spacing: 8) { //Image
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fit)
                        .frame(width: 180, height: 180)
                    Text("32")
                        .font(.system(size: 70, weight: .medium, design: .rounded))
                        .foregroundColor(.white)
                }
                .padding(.bottom,40)
        
                HStack(spacing: 15) {
                    ExtractedView(dayOfWeek: "Lunes", imageName: "cloud.sun.fill", temperature: 25)
                    ExtractedView(dayOfWeek: "Martes", imageName: "sun.max.fill", temperature: 35)
                    ExtractedView(dayOfWeek: "Miercoles", imageName: "cloud.sun.fill", temperature: 25)
                    ExtractedView(dayOfWeek: "Jueves", imageName: "wind.snow", temperature: 10)
                    ExtractedView(dayOfWeek: "Viernes", imageName: "snow", temperature: -1)
                }
                Spacer()
                Button {
                    print("SI")
                } label: {
                    Text("Ingresar a gmail")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .cornerRadius(10)
                    
                }
            Spacer()
            }
        }
    }
}

struct Clima_Previews: PreviewProvider {
    static var previews: some View {
        Clima()
    }
}

struct ExtractedView: View {
    var dayOfWeek:String
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 19, weight: .medium, design: .rounded))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium, design: .rounded))
                .foregroundColor(.white)
        }
    }
}

struct backgroundView: View {
    var topColor: Color
    var buttomColor:Color

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,buttomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

//colors: [Color("coloresrgb"),Color.red]

struct cityName:View {
    var cityName:String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundColor(.white)
            .padding()
    }
}
