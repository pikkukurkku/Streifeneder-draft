//
//  JumboImage.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI

struct JumboImage: View {
    var body: some View {
        ZStack {
            // Image
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: 300)
                .clipped()
                
            // Overlay with soft color
            Color.white.opacity(0.2) // This will create a semi-transparent black overlay
                .frame(width: UIScreen.main.bounds.width, height: 300)
            
            // Text and background for the overlay
            VStack(alignment: .trailing) {
                Text("Streifeneder Unternehmensgruppe")
                    .font(.body)
                    .foregroundColor(.white)
                    .bold()
                
                Text("Gemeinsam für Lebensqualität")
                    .font(.caption)
                    .foregroundColor(.white)
            }
            .padding(10)
            .background(Color.black.opacity(0.3)) // Background for the text
            .cornerRadius(10)
            .padding(.trailing, 10)
            .padding(.bottom, 8)
            .frame(maxWidth: .infinity, alignment: .bottomTrailing) // Ensure text is positioned correctly
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom)
    }
}

#Preview {
    JumboImage()
}
