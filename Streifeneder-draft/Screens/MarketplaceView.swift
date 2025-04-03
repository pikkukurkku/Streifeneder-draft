//
//  MarketplaceView.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI

struct MarketplaceView: View {
    var body: some View {
        VStack {
            Spacer()
               Text("Welcome to the Marktplatz!")
                   .font(.largeTitle)
                   .bold()
                   .padding()
               
               Spacer()
           }
           .frame(maxWidth: .infinity, maxHeight: .infinity)
           .background(Color.white)
           .ignoresSafeArea()
    }
}

#Preview {
    MarketplaceView()
}
