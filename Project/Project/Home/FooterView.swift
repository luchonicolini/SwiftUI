//
//  FooterView.swift
//  Project
//
//  Created by Luciano Nicolini on 05/08/2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {

        VStack(alignment: .center,spacing:10) {
            Text("IOSFA - Instituto de Obra Social de las Fuerzas Armadas y de Seguridad")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            
        }.padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            
    }
}
