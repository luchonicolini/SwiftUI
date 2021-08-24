//
//  File.swift
//  File
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct CardRow: View {
    
    var landmark: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("MAR DEL PLATA")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .padding(.leading,20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(self.landmark,id: \.name){ landmark in
                        //NavigationLink -> DetaillView
                        NavigationLink(destination: DetaillView(landmark: landmark)) {
                            
                            
                            CardView(landmark: landmark)
                            
                            
                                .padding(.top,10)
                                .padding(.horizontal,15)
                        }
                    }
                }
            }
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CardRow(landmark: landmarks)
    }
}
