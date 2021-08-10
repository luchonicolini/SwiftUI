//
//  File.swift
//  Project
//
//  Created by Luciano Nicolini on 05/08/2021.
//

import Foundation
import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 30, alignment: .center)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
