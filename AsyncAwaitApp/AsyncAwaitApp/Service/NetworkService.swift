//
//  NetworkService.swift
//  GettingStartedAsyncAwait
//
//  Created by Cordero Hernandez on 3/24/22.
//

import SwiftUI

class NetworkService {
    
    func getDate<T: Decodable & Identifiable>() async throws -> T? {
        guard let url = URL(string: "https://ember-sparkly-rule.glitch.me/current-date") else {
            return nil
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
