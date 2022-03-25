//
//  LoadingView.swift
//  GettingStartedAsyncAwait
//
//  Created by Cordero Hernandez on 3/25/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView("Loading...")
            .frame(width: 150, height: 150, alignment: .center)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
