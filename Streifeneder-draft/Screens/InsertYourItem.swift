//
//  InsertYourItem.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 04.04.25.
//

import SwiftUI

struct InsertYourItem: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark")
                        .padding()
                        .buttonStyle(PlainButtonStyle())
                        .foregroundColor(.backgroundBlack)
               
                        .background(Color.green)
                }
               // .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Text("Verkaufen")
                    .font(.title2)
           //        .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color.blue)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.red)
           // .padding()

            Spacer()
            // Add your content here
        }
        .presentationDetents([.medium, .large])
        .transition(.move(edge: .bottom))
    }
}


#Preview {
    InsertYourItem()
}
