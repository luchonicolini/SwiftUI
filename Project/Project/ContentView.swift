//
//  ContentView.swift
//  Project
//
//  Created by Luciano Nicolini on 05/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing:10) {
            
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing:0) {
                            CardRow()
                                .padding(.vertical,20)
                            
                            Divider()
                          
                                //DIVISION
                            
                           
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                }
            }
            //NavigationColor
            //NavigationLogo
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}


//NavigationColorExtencion

extension View {
    func navigationColor(background: UIColor) -> some View {
        return self
            .background(NavigationConfigurator(backgroundColor: background))
    }
}




