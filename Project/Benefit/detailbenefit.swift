//
//  detailbenefit.swift
//  detailbenefit
//
//  Created by Luciano Nicolini on 01/09/2021.
//

import SwiftUI

struct detailbenefit: View {
    var bag:Travel
    
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                ZStack {
                    if geometry.frame(in: .global).minY <= 0 {
                        Image(bag.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                            .cornerRadius(40)
                        .offset(y: geometry.frame(in: .global).minY/9)
                        .clipped()
                    } else {
                        Image(bag.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                            .clipped()
                            .offset(y: -geometry.frame(in: .global).minY)
                    }
                }
            }
                .frame(height: 400)
            VStack(alignment: .leading) {
                HStack {
                    
                }
                //imageName
                    .padding(.top, 20)
                
                Text(bag.title)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .lineLimit(nil)
                    
                

            Text(bag.description)
                    .font(.custom("AvenirNext-Regular", size: 20))
                    .lineLimit(nil)
                    .padding(.top, 1)
            }
            .frame(width: 350)
        }
        
    }

}


struct detailbenefit_Previews: PreviewProvider {
    static var previews: some View {
        detailbenefit(bag: data[0])
    }
}

