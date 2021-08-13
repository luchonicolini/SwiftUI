//
//  SwiftUIView.swift
//  SwiftUIView
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct Categories: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        CategoryRow(geometry: geometry, categoryNameLeft: "p1", categoryNameRight: "p1")
                        CategoryRow(geometry: geometry, categoryNameLeft: "p1", categoryNameRight: "p1")
                        CategoryRow(geometry: geometry, categoryNameLeft: "", categoryNameRight: "")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Health", categoryNameRight: "Arts")
                    }
                    .padding()
                }.navigationBarTitle("Categories")
            }
        }
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}

struct CategoryCard: View {
   
    let geometry: GeometryProxy
    let categoryName: String
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(categoryName.lowercased())
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width * 0.45,
                       height: geometry.size.width * 0.55)
            Text(categoryName)
                .font(.headline)
                .foregroundColor(Color.white)
                .padding(12)
        }
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
    }
}



