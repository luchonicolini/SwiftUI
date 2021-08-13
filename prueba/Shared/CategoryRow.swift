//
//  CategoryRow.swift
//  CategoryRow
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct CategoryRow: View {
    let geometry: GeometryProxy
    
    let categoryNameLeft: String // Add parameter for categoryNameLeft
    let categoryNameRight: String
    var body: some View {
        HStack {
                    NavigationLink(destination: SwiftUIView()) {
                        CategoryCard(geometry: geometry, categoryName: categoryNameLeft)
                    }
                    NavigationLink(destination: SwiftUIView()) {
                        CategoryCard(geometry: geometry, categoryName: categoryNameRight)
                    }
                }.buttonStyle(PlainButtonStyle())
        
    }
}
