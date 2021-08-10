//
//  HHH.swift
//  iosfa_app
//
//  Created by Luciano Nicolini on 21/06/2021.
//

import SwiftUI
struct HomeView: View {
    
    var categories:[String:[Drink]]{
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(), id: \.self) { key in
                DrinkRow(categoryName:"Nuestros destinos".uppercased(), drinks:self.categories[key]!)
                
                .frame(height:320).padding(.top).padding(.bottom)
                
            }
            .navigationBarTitleDisplayMode(.inline)
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
        .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
    }
    
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

