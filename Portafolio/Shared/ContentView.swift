//
//  ContentView.swift
//  Shared
// .navigationBarTitle(Text("hola"))
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    var categories:[String:[Landmark]]{
        .init(
            grouping: landmarks,
            by: {$0.category.rawValue }
        )
    }
        
    var body: some View {
        NavigationView {
                  ZStack {
                      VStack(spacing:10) {
                          ScrollView(.vertical, showsIndicators: false, content: {
                              HStack {
                                  Text("Nuestros Destinos")
                                      .font(.title2)
                                  Spacer()
                              }
                                  .padding(.horizontal)
                                  .padding(.top,15)
                                  .padding(.bottom,10)
                              
                              
                              
                              
                              VStack(spacing:0) {
                                 //CARD CATEGORIA
                                  ForEach(categories.keys.sorted(), id: \.self) { key in
                                      CardRow(landmark:self.categories[key]!)
                                
                                      .padding(.vertical,20)
                                  }
                                  

                                  
                                  //DIVISION
                                
                                  Footer()
                                     
                                  
                              }
                          })
                      }
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//NavigationColorExtencion
extension View {
    func navigationColor(background: UIColor) -> some View {
        return self
            .background(NavigationConfigurator(backgroundColor: background))
    }
}
