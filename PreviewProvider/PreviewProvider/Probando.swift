//
//  SwiftUIView.swift
//  PreviewProvider
//
//  Created by Luciano Nicolini on 03/05/2021.
//

import SwiftUI
//--------prueba-----
struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue).edgesIgnoringSafeArea(.all)
            VStack {
                Circle()
                    .stroke(Color.black,lineWidth: 2)
                    .frame(width:44, height: 44)
                Text("hola").bold()
                    Capsule()
                    .foregroundColor(Color.green)
                    .frame(width: 44)
                    .overlay(Text("Ingresar"))
                
            }
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0,style: .continuous))
            .padding()
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}






   
