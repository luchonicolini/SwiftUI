/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a single category item.
*/

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            landmark.image
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode:.fill)
                .frame(width:320,height:250)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .foregroundColor(.primary)
                Text(landmark.name)
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

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}


