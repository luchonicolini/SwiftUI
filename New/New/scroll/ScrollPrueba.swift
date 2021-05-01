//
//  ScrollView.swift
//  New
//
//  Created by Luciano Nicolini on 13/03/2021.
//

import SwiftUI

struct ScrollPrueba: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct Home:View {
    var colors:[Color] = [.red,.blue,.green,.pink]
    @State var offset: CGFloat = 0
    
    var body: some View {
        ScrollView(.init()) {
            TabView {
                ForEach(colors.indices,id: \.self) { index in
                    if index == 1 {
                        colors[index]
                            .overlay(
                                GeometryReader { Proxy -> Color in
                                    let minX = Proxy.frame(in: .global).minX
                                    DispatchQueue.main.async {
                                        withAnimation(.default){
                                            self.offset = -minX
                                        }
                                    }
                                    return Color.clear
                                }
                                .frame(width: 0, height: 0)
                                ,alignment: .leading
                            )
                    
                    } else {
                        colors[index]
                    }
                 

                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
        }

        
        //animate
        .overlay(
            HStack(spacing:15) {
                ForEach(colors.indices,id: \.self) { index in
                    Capsule()
                        .fill(Color.white)
                        .frame(width:getindex() == index ? 20:7, height: 7)
                }
                
            }
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            .padding(.bottom,10)
            ,alignment: .bottom
        )
        .ignoresSafeArea()
    }
    
    func getindex() -> Int {
        let index = Int(round(Double(offset/getWidth())))
        
        return index
        
    }
}

extension View {
    func getWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
}





struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPrueba()
    }
}




