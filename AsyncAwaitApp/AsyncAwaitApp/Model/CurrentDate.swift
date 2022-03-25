//
//  CurrentDate.swift
//  GettingStartedAsyncAwait
//
//  Created by Cordero Hernandez on 3/24/22.
//

import Foundation

struct CurrentDate: Decodable, Identifiable {
    let id = UUID()
    let date: String
    
    private enum CodingKeys: String, CodingKey {
        case date = "date"
    }
}
