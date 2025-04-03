//
//  ProductCell.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 02.04.25.
//

import SwiftUI

struct ProductCell: View {
    let imageName: String
    let title: String
    
    var body: some View {
            VStack(alignment: .center, spacing: 8) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 140)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

                Text(title)
                    .font(.headline)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .frame(width: 120) // Fixed width, flexible height
                    .lineLimit(nil) // Allow full expansion
                    .foregroundStyle(.strfblue)
                    .padding(.top, 4)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer() // Pushes text expansion downward instead of moving the image
            }
            .padding()
            .background(Color.white.opacity(0.5)) // White background for card
                 .cornerRadius(20)
                 .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 4)
            .frame(height: 240, alignment: .center) // Ensures consistent height
        }
    }


//#Preview {
//    ProductCell(imageName: "orthesen", title: "Orthesen duebuebfc")
//}
