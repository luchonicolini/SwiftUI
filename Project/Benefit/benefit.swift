//
//  benefit.swift
//  benefit
//
//  Created by Luciano Nicolini on 01/09/2021.
//

import SwiftUI

struct benefit: View {
    var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        Text("Beneficios")
                            .font(.system(size: 35,weight: .bold,design: .rounded))
                            .foregroundColor(.black)
                        Spacer()
        
                    }
                    
                    .padding([.horizontal,.top])
                   
                    
                    VStack {
                        Text(" Todos los afiliados podrán disfrutar de los siguientes beneficios")
                            .font(.system(size: 24, weight: .medium, design: .rounded))
                            .lineLimit(nil)
                            .padding(.top, 10)
                        NVideoPlayer()
                    }
                   
                    
                    Text("Haga click sobre cada imagen para ampliar información")
                        .font(.system(size: 23, weight: .medium, design: .rounded))
                        .lineLimit(nil)
                        .padding(.top, 10)
                    
                    ZStack {
                        //gridView vista primera parte
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVGrid(columns: columns,spacing: 25){
                                ForEach(data){ travel in
                                    NavigationLink(destination: detailbenefit(bag: travel), label:  {
                                        VStack(alignment: .leading,spacing: 10) {
                                         
                                            Image(travel.image)
                                                .resizable()
                                                .frame(height:180)
                                                .cornerRadius(15)
                                  

                                            Text(travel.title)
                                                .font(.system(size: 23,weight: .medium,design: .rounded))
                                                .foregroundColor(Color.black)
                                            
                                        }
                                    })
                                  
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                
                    }
                    
                    VStack {
                        Text("Los beneficios que no se hicieron efectivos durante el periodo de aislamiento obligatorio (03/2020 al 03/2021) se prorrogan por un año. Estarán vigentes a partir del 1 de agosto 2021, si las condiciones de la pandemia no registran cambios o modificaciones a las actuales. Podrán canalizarse enviando un mail a reservas.turismo@iosfa.gob.ar.")
                            .font(.custom("AvenirNext-Regular", size: 15))
                            .foregroundColor(.black)
                            .padding(.top, 10)
                    }
                    .padding()
                    
                    Divider()
                    Footer()
                    
                    
                }
                .padding(.top, 20)
            }
            //NavigationColor //NavigationLogo
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

struct benefit_Previews: PreviewProvider {
    static var previews: some View {
        benefit()
    }
}

    //model
struct Travel: Identifiable {
    var id : Int
    var image : String
    var title : String
    var description : String
}

var data = [
    Travel(id: 1, image: "stmarylake", title: "Buenos Aires",description: "A los afiliados titulares recién casados les regalamos 10 noches de alojamiento en cualquiera de nuestros hoteles en cualquier época del año. Válido dentro de los 90 días subsiguientes al de la fecha de la boda; no fraccionables. En cualquier época del año. Será requisito la presentación de copia de Acta de Matrimonio para el otorgamiento del beneficio."),
    Travel(id: 2, image: "stmarylake", title: "Mar del Plata",description: "A los afiliados titulares recién casados les regalamos 10 noches de alojamiento en cualquiera de nuestros hoteles en cualquier época del año. Válido dentro de los 90 días subsiguientes al de la fecha de la boda; no fraccionables. En cualquier época del año. Será requisito la presentación de copia de Acta de Matrimonio para el otorgamiento del beneficio."),
    
    Travel(id: 0, image: "turtlerock", title: "Bariloche",description: ""),
    Travel(id: 3, image: "turtlerock", title: "Sierras de Cordoba",description: "")
    
]
