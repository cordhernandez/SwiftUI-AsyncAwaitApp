//
//  CurrentDateListViewModel.swift
//  GettingStartedAsyncAwait
//
//  Created by Cordero Hernandez on 3/24/22.
//

import Foundation

@MainActor
class CurrentDateListViewModel: ObservableObject {
    
    @Published var currentDates: [CurrentDateViewModel] = []
    let service = NetworkService()
    
    func populateDates() async {
        do {
            guard let currentDate: CurrentDate = try await service.getDate() else { return }
            let currentDateViewModel = CurrentDateViewModel(currentDate: currentDate)
            self.currentDates.append(currentDateViewModel)
        } catch {
            print(error)
        }
    }
}

struct CurrentDateViewModel {
    
    let currentDate: CurrentDate
    
    var id: UUID {
        currentDate.id
    }
    
    var date: String {
        currentDate.date
    }
    
}
