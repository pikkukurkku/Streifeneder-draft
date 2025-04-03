//
//  SideMenuBackgroundElement.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI

struct SideMenuBackgroundElement: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.gray.opacity(0.5))
            .frame(width: 250, height: 50)
            .shadow(color: .black.opacity(0.2), radius: 4, x: 2, y: 2)
    }
}

//#Preview {
//    SideMenuBackgroundElement()
//}
