//
//  buttonImage.swift
//  ProyectOne
//
//  Created by Luciano Nicolini on 13/04/2021.
//

import SwiftUI

struct buttonImage: View {
    @State var showIcon = false
    
    var body: some View {
        VStack() {
            if showIcon {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .clipped()
                    .padding(.top,90)
            }
        }
       
        VStack(alignment:.leading,spacing:10) {
            Text("Start learning SwiftUI today!")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            Text("All the source code for the apps we create will be uploaded for you. You can use this code for if you're not sure about something we're working on or as a reference when coding up your own SwiftUI apps.")
            
        }
        .frame(width: 350, height: 300)
        
        Button(action: {
            showIcon.toggle()
        }) {
            Text("loanding")
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(.bottom,130)
            
        }
    }
}


struct buttonImage_Previews: PreviewProvider {
    static var previews: some View {
        buttonImage()
    }
}
