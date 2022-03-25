//
//  ContentView.swift
//  GettingStartedAsyncAwait
//
//  Created by Cordero Hernandez on 3/24/22.
//

import SwiftUI

struct ContentView: View {
    @State var isLoadingViewHidden = false
    
    var body: some View {
        ZStack {
            DateListView(isLoadingViewHidden: $isLoadingViewHidden)
            if !isLoadingViewHidden {
                LoadingView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
