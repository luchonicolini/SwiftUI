//
//  CategoryItem.swift
//  Definitivo (iOS)
//
//  Created by Luciano Nicolini on 09/12/2021.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            landmark.image
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:240,height:240)
                .cornerRadius(10)
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .foregroundColor(.primary)
                Text(landmark.name)
                    .font(.system(size: 18, design: .rounded))
                    .foregroundColor(.primary)
            }
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
