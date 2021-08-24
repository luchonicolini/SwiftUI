//
//  File.swift
//  File
//
//  Created by Luciano Nicolini on 13/08/2021.
//

import Foundation
import SwiftUI

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}



struct Landmark: Hashable, Codable, Identifiable {
    let id: Int
    let imageName: String
    let name: String
    let minidescrpition : String
    let description: String
    var category: Category
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case uno = "uno"
        case dos = "dos"
    }

}
