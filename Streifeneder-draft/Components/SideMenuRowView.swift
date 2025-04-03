//
//  SideMenuRowView.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI

struct SideMenuRowView: View {
    
    var item: SideMenuOptionModel
    
    var body: some View {
        Image(systemName: item.systemImageName)
            .foregroundColor(.white)
            .frame(width: 20, alignment: .center)
            .padding(.leading, 10)
        Text(item.title)
            .font(.body)
            .bold()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

//#Preview {
//    SideMenuRowView(item: .produkte)
//}
