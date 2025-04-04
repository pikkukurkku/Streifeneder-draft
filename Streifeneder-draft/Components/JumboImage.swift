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
   
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: 300)
                .clipped()
                
         
            Color.white.opacity(0.2)
                .frame(width: UIScreen.main.bounds.width, height: 300)

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
            .background(Color.black.opacity(0.3))
            .cornerRadius(10)
            .frame(width: UIScreen.main.bounds.width, height: 300, alignment: .bottomTrailing)
            .padding(.bottom, 35)
            .padding(.trailing, 30)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding(.bottom)
    }
}

#Preview {
    JumboImage()
}
