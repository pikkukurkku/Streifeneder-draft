//
//  ProductsCarousel.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 02.04.25.
//

import SwiftUI

var products: [String] = ["orthopaedische-schuhe", "orthesen", "schuheinlagen", "orthesen", "orthesen"]
var productNames: [String] = ["Orthopädische Schuhe", "Orthesen", "Schuheinlagen", "Orthesen", "Orthesen"]

struct ProductsCarousel: View {
    var body: some View {
        VStack(alignment: .leading)  {
            Text("Produkte")
                .font(.title2)
                .foregroundColor(.strfblue)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false)  {
                HStack (spacing: 16) {
                    ForEach(Array(zip(products, productNames)), id: \.0) { product, productName in
                        ProductCell(imageName: product, title: productName)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
            }
            .clipped(antialiased: false)
        }
        .padding(.vertical)
        .background(Color.background)
        // .clipShape(RoundedRectangle(cornerRadius: 20))
        //   .padding(.horizontal)
    }
}

#Preview {
    ProductsCarousel()
}
