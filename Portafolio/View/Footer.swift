//
//  Footer.swift
//  Footer
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        VStack(alignment: .center,spacing:10) {
             Text("IOSFA - Instituto de Obra Social de las Fuerzas Armadas y de Seguridad")
                 .foregroundColor(.gray)
                 .multilineTextAlignment(.center)
                 .layoutPriority(2)
             
             
         }.padding()
     }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
            .previewLayout(.sizeThatFits)
    }
}
