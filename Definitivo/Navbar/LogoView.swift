//
//  logoView.swift
//  logoView
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct logoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 30, alignment: .center)
        }
    }
}

struct logoView_Previews: PreviewProvider {
    static var previews: some View {
        logoView()
    }
}
