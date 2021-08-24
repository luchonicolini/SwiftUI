//
//  Detail.swift
//  Detail
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import SwiftUI

struct Detail: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading,spacing: 15,pinnedViews: [.sectionHeaders], content:  {
                Section(header: Text("")) {
                    ForEach(foods) { food in
                        Mardelplata(food: food)
                    }
                }
            })
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
