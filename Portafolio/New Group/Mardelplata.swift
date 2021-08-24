//
//  Mardelplata.swift
//  Mardelplata
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct Mardelplata: View {
    var food: Food
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10, content:  {
                Text(food.tilte)
                    .font(.title2)
                    .fontWeight(.bold)
           
                Text(food.description)
                    .font(.caption)
                    .lineLimit(3)
        
            })
            
            Spacer(minLength: 10)
            Image(food.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 130)
                .cornerRadius(10)
            
        }.padding(.horizontal)
    }
}

struct Mardelplata_Previews: PreviewProvider {
    static var previews: some View {
        Mardelplata(food: foods[0])
    }
}
