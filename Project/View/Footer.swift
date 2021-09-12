//
//  File.swift
//  File
//
//  Created by Luciano Nicolini on 31/08/2021.
//  Copyright © 2021 Apple. All rights reserved.
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
