//
//  Contacto.swift
//  ProyectOne
//
//  Created by Luciano Nicolini on 13/04/2021.
//

import SwiftUI

struct Contacto: View {
    var body: some View {
        NavigationView {
            List(LosDatosDeContacto) { Contact in
                NavigationLink(destination: DetailView(contact: Contact))
                {
                ContactRow(contact: Contact)
                
            }
        }
        .navigationBarTitle("Mis Contactos")
      
    }
}

struct Contacto_Previews: PreviewProvider {
    static var previews: some View {
        Contacto()
    }
}

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
            HStack {
                Image(contact.imageName)
                    .resizable()
                    .clipped()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(50)
                    .frame(width: 60, height: 60)
                VStack(alignment:.leading){
                    Text(contact.name)
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                    Text(contact.phone)
                }
            }
    }
}
}
