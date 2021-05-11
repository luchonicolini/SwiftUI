//
//  CardView.swift
//  Cards
//
//  Created by Luciano Nicolini on 08/05/2021.
//

import SwiftUI

struct CardView: View {
    var yogaName: String
    var animation: Namespace.ID
    var body: some View {
        ZStack {
            Image(yogaName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .matchedGeometryEffect(id: yogaName, in: animation)
            VStack {
                HStack {
                    Text(yogaName)
                        .bold()
                        .font(.system(.largeTitle,design: .rounded))
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 0.0, y: 2.0)
                        .padding()
                        .matchedGeometryEffect(id: yogaName + "text", in: animation)
                    Spacer()
                }
                Spacer()
            }
            .matchedGeometryEffect(id: yogaName + "description", in: animation)
            
        }//verficar
        .padding()
    }
}

