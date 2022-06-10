//
//  HistoryView.swift
//  ExampleSwift
//
//  Created by Luciano Nicolini on 10/06/2022.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationLink("Work Folder") {
            HistoryView()
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
