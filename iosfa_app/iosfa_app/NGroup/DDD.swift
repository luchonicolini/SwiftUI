//
//  DDD.swift
//  iosfa_app
//
//  Created by Luciano Nicolini on 21/06/2021.
//Image(drink.imageName)

import SwiftUI

struct DrinkDetail: View {
    
    
    
    @State private var showModal:Bool = false
    var drink:Drink
   
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                ZStack {
                    if geometry.frame(in: .global).minY <= 0 {
                        Image(drink.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                            .cornerRadius(40)
                        .offset(y: geometry.frame(in: .global).minY/9)
                        .clipped()
                    } else {
                        Image(drink.imageName)
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
                HStack {
                    
                }
                //imageName
                    .padding(.top, 20)
                Text(drink.name)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .lineLimit(nil)
                    .padding(.top, 10)
                //MiniINFO
                Text("Av. Luro 2156 • Te. (0223) 491-5450/54")
                    .font(.system(size: 17, weight: .bold, design: .rounded))
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
               Text(articleContent)
                    .font(.custom("AvenirNext-Regular", size: 20))
                    .lineLimit(nil)
                    .padding(.top, 3)
                
                
                //BotonConsultas
                VStack(alignment: .leading) {
                    Text("¿Tiene dudas o consultas?")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .padding(.top, 10)
                }
                
                //Botones
                HStack(spacing: 5) {
                    VStack {
                        Button(action: {
                            showModal = true
                        }, label: {
                            Text("Tarifas")
                                .font(.custom("AvenirNext-Regular", size: 20))
                                .foregroundColor(Color(.white))
                                       .padding()

                        })
                        .background(RoundedRectangle(cornerRadius: 10   , style: .continuous))
                    }
                    .sheet(isPresented: $showModal, content: {
                        FFFView(drink: drink)
                    })
             
                //Email
                    Button(action: {
                       EmailHelper.shared.sendEmail(subject: "Anything...", body: "", to: "")
                     }) {
                         Text("Enviar e-mail")
                            .font(.custom("AvenirNext-Regular", size: 20))
                            .foregroundColor(Color(.white))
                                   .padding()
                        
                     }
                    .background(RoundedRectangle(cornerRadius: 10   , style: .continuous))
                    
                }
                
        
                //CentroLogo
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 30, alignment: .center)
                    }
                    //CentroShared
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: sahreButton) {
                            Image(systemName: "square.and.arrow.up")
                                .font(.title3)
                                
                        }
                    }
                    
                }

                
            }
                .frame(width: 350)
        }
            .edgesIgnoringSafeArea(.top)
        //background
        .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
    }
}




struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}



let articleContent =

"""
Con más de 60 años de trayectoria el Hotel Antartida es uno de los hoteles tradicionales de la ciudad, ubicado en un lugar
"""



//sahreView
struct ShareView:View {
    @State private var isShareetsShowing = false
    var body: some View {
        Button(action: sahreButton) {
            Image(systemName: "square.and.arrow.up")
                
        }
    }
}

func sahreButton() {
    let url = URL(string: "https://turismo.iosfa.gob.ar/zonas.php")
    let av = UIActivityViewController(activityItems: [url!],applicationActivities: nil)
   
    UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
}


