//
//  TrendingHashtagView.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 04.04.25.
//

import SwiftUI

struct TrendingHashtagView: View {
    var body: some View {
        VStack {
            Text("Derzeit beliebt")
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding()
            HashtagsView(tags: hashtags)
                .padding([.leading, .trailing], 10)
        }
    }
}

#Preview {
    TrendingHashtagView()
}
