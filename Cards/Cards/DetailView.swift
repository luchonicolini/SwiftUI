//
//  DetailView.swift
//  Cards
//
//  Created by Luciano Nicolini on 08/05/2021.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var selectedObject:SelectedObject
    var animation: Namespace.ID
    
    var body: some View {
        ScrollView {
            VStack {
                Image(selectedObject.name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: selectedObject.name, in: animation)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.9)) {
                            selectedObject.isShowing.toggle()
                        }
                    }
                
                VStack {
                    HStack {
                        Text(selectedObject.name)
                            .bold()
                            .font(.system(.largeTitle,design: .rounded))
                            .foregroundColor(.black)
                            .matchedGeometryEffect(id: selectedObject.name + "text", in: animation)
                    
                            .padding()
                        Spacer()
                        Image(systemName: "play")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                            .padding(.trailing)
                    }
                    Spacer()
                    //Descripcion
                    Text("Se entiende por texto una composición ordenada de signos inscritos en un sistema de escritura, cuya lectura permite recobrar un sentido específico referido por el emisor. La palabra texto proviene del latín textus, que significa “tejido” o “entrelazado”, de modo que en el origen mismo de la idea del texto se encuentra su capacidad para contener ideas en un hilo o una secuencia de caracteres.")
                        .minimumScaleFactor(0.1)
                        .padding()
                        .matchedGeometryEffect(id: selectedObject.name + "description", in: animation)
                }
            }
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}
