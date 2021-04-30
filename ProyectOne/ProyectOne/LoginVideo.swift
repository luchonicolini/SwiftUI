//
//  LoginVideo.swift
//  ProyectOne
//
//  Created by Luciano Nicolini on 26/04/2021.
//

import SwiftUI

struct LoginVideo: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                Text("Explore the World")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text("Discover the most amazing places in the world and share your experience with the No. 1 travel community.")
                    .foregroundColor(.white)
                    .frame(maxWidth: 320)
                    .padding(.top, 20)
                    .padding(.bottom, 50)
                Spacer()
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white)
                
                HStack {
                    Spacer()
                    Text("Login")
                        .foregroundColor(.white)
                        .padding(20)
                    Spacer()
                    Text("Signup")
                        .foregroundColor(.white)
                        .padding(20)
                    Spacer()
                }
                
            }
        }
    }
}

struct LoginVideo_Previews: PreviewProvider {
    static var previews: some View {
        LoginVideo()
    }
}
