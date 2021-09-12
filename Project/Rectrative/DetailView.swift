//
//  File.swift
//  File
//
//  Created by Luciano Nicolini on 10/09/2021.
//

import SwiftUI

struct DetailView: View {
    var info:Card = CardData[0]
    var body: some View {
        VStack {
            Image(info.image)
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(10)
            Text(info.tilte)
            Text(info.subtilte)
            Text(info.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(info: CardData[0])
    }
}
