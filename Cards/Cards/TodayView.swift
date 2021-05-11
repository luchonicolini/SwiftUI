//
//  TodayView.swift
//  Cards
//
//  Created by Luciano Nicolini on 08/05/2021.
//

import SwiftUI

struct TodayView: View {
    @EnvironmentObject var selectedObject: SelectedObject
    var animation: Namespace.ID
    
    static let yogaArray = ["uno","dos","tres","cuatro"]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem()], content: {
                ForEach(TodayView.yogaArray, id:\.self) { yoga in
                    CardView(yogaName: yoga, animation: animation)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.6, dampingFraction: 0.9)) {
                                selectedObject.name = yoga
                                selectedObject.isShowing.toggle()
                            }
                        }
                    
                }
            })
        }
    }
}

