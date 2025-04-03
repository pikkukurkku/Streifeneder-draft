//
//  MarketplaceView.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI

struct MarketplaceView: View {
    
    @State private var searchTerm = ""
    @State private var navigateToHome = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.white)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                
                    VStack (spacing: 0) {
                            ScrollView {
                            ProductsCarousel()
                            ProductsCarousel()
                            ProductsCarousel()
                            ProductsCarousel()
                            ProductsCarousel()
                        }
                            .scrollIndicators(.hidden)
                        .padding()
                    }
                }
                BottomNav()
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 0)
                    .ignoresSafeArea(edges: .bottom)
            }
            .navigationBarBackButtonHidden(true)
            .searchable(text: $searchTerm, placement: .toolbar, prompt: "Suche Artikel")
        }
     
    }
}

#Preview {
    MarketplaceView()
}


