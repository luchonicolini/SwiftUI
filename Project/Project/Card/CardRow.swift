//
//  SwiftUIView.swift
//  Project
//
//  Created by Luciano Nicolini on 05/08/2021.
//

import SwiftUI

struct CardRow: View {

    
    var body: some View {
        VStack(alignment: .leading) {
            
         Text("Nuestros Destinos")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
            .padding(.leading,20)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .top) {
                    ForEach(players) { player in
                        //NavigationLink -> DetaillView
                        NavigationLink(destination: DetaillView(player: player)) {
                       
                            
                            CardView(player: player)
                            
                            
                           
                            .padding(.top,10)
                            .padding(.horizontal,15)
                        }
                    }
                }
            })
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CardRow()
    }
}


