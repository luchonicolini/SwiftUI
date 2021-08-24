//
//  File.swift
//  File
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct CardView: View {
    
    var landmark: Landmark
 
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(landmark.imageName).resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:320,height:250)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading){
                Text(landmark.name)
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .foregroundColor(.primary)
                Text(landmark.minidescrpition)
                .font(.custom("AvenirNext-Regular", size: 18))
                .multilineTextAlignment(.leading)
                .lineLimit(3).frame(height:40)
                .foregroundColor(.primary)
                .padding(.top,-10)
            }
            Divider()
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(landmark: landmarks[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
