//
//  File.swift
//  Project
//
//  Created by Luciano Nicolini on 05/08/2021.
//

import SwiftUI
import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to licate \(file) from bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to licate \(file) from bundle.")
        }
        let decoder = JSONDecoder()
        
        guard let decodeData = try? decoder.decode(T.self,from: data) else {
            fatalError("Failed to licate \(file) from bundle.")
            
        }
        
        return decodeData
    }
    
}

struct Player: Codable,Identifiable {
    let id: Int
    let rating: Int
    let imageName: String
    let name: String
    let description: String
    let minidescrpition : String
}
