//
//  pruebasluciano.swift
//  New
//
//  Created by Luciano Nicolini on 07/04/2021.
//

import SwiftUI

struct pruebasluciano: View {
    @State var showIcon = false
    var body: some View {
        VStack(alignment:.leading, spacing: 10){
            if showIcon {
                 Image("logo")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 250, height: 160)
                     .clipped()
             }
            
        }
        .frame(width: 300, height: 100)
        Button(action: {
             showIcon.toggle()
         }) {
             //...
         }
        
     
    }
    
  
}

struct pruebasluciano_Previews: PreviewProvider {
    static var previews: some View {
        pruebasluciano()
    }
}
