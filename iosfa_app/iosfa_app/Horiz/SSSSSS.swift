//
//  SSSSSS.swift
//  iosfa_app
//.background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
//  Created by Luciano Nicolini on 04/07/2021.
//

import SwiftUI

struct SSSSSS:View {
    var body: some View {
        ZStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("Beneficios")
                        .font(.system(size: 35,weight: .bold,design: .rounded))
                        .foregroundColor(.black)
                    Spacer()
                 
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding([.horizontal,.top])
                
                VStack {
                    Text(" Todos los afiliados podrán disfrutar de los siguientes beneficios")
                        .font(.system(size: 24, weight: .medium, design: .rounded))
                        .lineLimit(nil)
                        .padding(.top, 10)
                    NVideoPlayer()
                }
                VStack {
                    Text("Los beneficios que no se hicieron efectivos durante el periodo de aislamiento obligatorio (03/2020 al 03/2021) se prorrogan por un año. Estarán vigentes a partir del 1 de agosto 2021, si las condiciones de la pandemia no registran cambios o modificaciones a las actuales. Podrán canalizarse enviando un mail a reservas.turismo@iosfa.gob.ar.")
                        .font(.custom("AvenirNext-Regular", size: 15))
                        .foregroundColor(.black)
                        .padding(.top, 10)
                    Text("Haga click sobre cada imagen para ampliar información")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .lineLimit(nil)
                        .padding(.top, 10)
                 
                }
                
                VStack {
                    ProductView()
                        .padding(.top, 10)
                }

                
            }
        }.background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
        .background(Color(.systemBackground))
        

        
    }
        
}



struct SSSSSS_Previews: PreviewProvider {
    static var previews: some View {
        SSSSSS()
    }
}


// SCROLL-VIEW1
struct ParteDos:View {
    private var numberOfImage = 5
    private var Time = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    
 
  
    var body: some View {
        GeometryReader { proxy in
            TabView(selection: $currentIndex){
                ForEach(0..<numberOfImage) { num in
                    Image("\(num)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .tag(num)
                    
                }
            }.tabViewStyle(PageTabViewStyle())
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            .frame(width: 380, height: 450)
            .onReceive(Time, perform: { _ in
                withAnimation {
                    currentIndex = currentIndex < numberOfImage ? currentIndex + 1 : 0
                }
                
            })
            
            
        }

    }
}


//SCROLL-VIEW 2

struct ProductView: View {
    var body: some View {
        TabView {
            ForEach(0 ..< 5) { _ in
                Image(uiImage: #imageLiteral(resourceName: "4"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
    

            }
    
        }
        .cornerRadius(10)
        .frame(width: 380, height: 530)
        .tabViewStyle(PageTabViewStyle())
       
    
        
    }
}

