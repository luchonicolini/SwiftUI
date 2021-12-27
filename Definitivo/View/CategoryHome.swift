//
//  CategoryHome.swift
//  Definitivo (iOS)
//
//  Created by Luciano Nicolini on 09/12/2021.
//

import Foundation
import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false

    var body: some View {
        NavigationView {
            List {
                HStack {
                    Text("Nuestros Destinos")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                        .padding(.vertical,10)
                }
                
              
               
                .listRowInsets(EdgeInsets())
                //.background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
            }
   
            .listStyle(.inset)
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

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}

//NavigationColorExtencion
extension View {
    func navigationColor(background: UIColor) -> some View {
        return self
            .background(NavigationConfigurator(backgroundColor: background))
    }
}
