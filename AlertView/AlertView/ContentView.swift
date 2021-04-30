//
//  ContentView.swift
//  AlertView
//  Como hacer un ALERTA en swiftUI-2021
//  Created by Luciano Nicolini on 30/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showalert = false
    
    var body: some View {
        Button("TOCAR BOTON"){
            showalert = true
         }
       
        //AlertView
        .alert(isPresented: $showalert) {
            Alert(title: Text("ALERTA"), message: Text("gracias por leer mi mensaje"), dismissButton: .default(Text("Cancelar")))
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

