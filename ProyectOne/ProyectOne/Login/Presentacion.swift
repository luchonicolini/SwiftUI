//
//  Presentacion.swift
//  ProyectOne
//
//  Created by Luciano Nicolini on 13/04/2021.
//

import SwiftUI

struct Presentacion: View {
   @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            WelcomeText()
            UserImage()
            //----------------------------
         TextField("UserName", text: $username)
            .padding()
            .cornerRadius(5.0)
            .background(Color.gray)
            .padding(.bottom,20)
            
            //----------------------------
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            Text("LOGIN")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
            //----------------------------
          
            Text("forgot your password?")
                .font(.headline)
                .foregroundColor(.black)
                        
        }
        .padding()

    }
}

struct Presentacion_Previews: PreviewProvider {
    static var previews: some View {
        Presentacion()
    }
}

struct WelcomeText: View {
    var body: some View {
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
        }
    }


struct UserImage: View {
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}
