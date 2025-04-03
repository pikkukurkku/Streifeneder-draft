//
//  LabelNew.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI

struct LabelNew: View {
    var body: some View {
        Text("Neu!")
            .font(.callout)
            .bold()
            .foregroundColor(.white)
            .padding(8)
            .background(Color.blue.opacity(0.7))
            .cornerRadius(8)
            .padding(.trailing, 10)
    }
}

//#Preview {
//    LabelNew()
//}
