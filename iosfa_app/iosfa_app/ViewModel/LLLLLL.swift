//
//  LLLLLL.swift
//  iosfa_app
//
//  Created by Luciano Nicolini on 01/07/2021.
//

import SwiftUI

struct ViewModel: View {
    var drink:Drink
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                ForEach(drinkData, id: \.self) { place in
                    
                    CardView(drink: drink)
                    
                }
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
        
    }
}

struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
