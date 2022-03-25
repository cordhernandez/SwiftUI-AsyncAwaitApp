//
//  DateListView.swift
//  GettingStartedAsyncAwait
//
//  Created by Cordero Hernandez on 3/25/22.
//

import SwiftUI

struct DateListView: View {
    @StateObject var currentDateListVM = CurrentDateListViewModel()
    @Binding var isLoadingViewHidden: Bool
    
    var body: some View {
        NavigationView {
            List(currentDateListVM.currentDates, id: \.id) { currentDate in
                Text(currentDate.date)
            }
            .listStyle(.plain)
            .navigationTitle("Dates")
            .navigationBarItems(trailing: Button(action: {
                Task.init(priority: .userInitiated) {
                    await currentDateListVM.populateDates()
                }
            }, label: {
                Image(systemName: "arrow.clockwise.circle")
            }))
            .task {
                await currentDateListVM.populateDates()
                isLoadingViewHidden = true
            }
        }
    }
}

struct DateListView_Previews: PreviewProvider {
    static var previews: some View {
        DateListView(currentDateListVM: CurrentDateListViewModel(), isLoadingViewHidden: .constant(false))
    }
}
