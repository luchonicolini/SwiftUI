//
//  LogoView.swift
//  iosfa_app
//
//  Created by Luciano Nicolini on 12/06/2021.
//

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
