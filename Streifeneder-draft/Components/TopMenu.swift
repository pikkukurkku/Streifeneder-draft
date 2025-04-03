//
//  SwiftUIView.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 02.04.25.
//

import SwiftUI


struct TopMenu: View {

    let toggleMenu: () -> Void
    
    var body: some View {
        HStack {
            CircleButton(systemImage: "line.3.horizontal") {
                toggleMenu() 
            }
           // NavigationLink(destination: ProfileView()) {
            HStack{
                CircleButton(systemImage: "person") {
                    
                }
                CircleButton(systemImage: "questionmark") {
                    
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing)
       //     }
       //     .buttonStyle(PlainButtonStyle())
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top)
    }
}


struct CircleButton: View {
    let systemImage: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Circle()
                .fill(Color.strfblue)
                .frame(width: 50)
                .overlay(
                    Image(systemName: systemImage)
                        .foregroundColor(.white)
                        .bold()
                )
        }
        .buttonStyle(PlainButtonStyle())
    }
}



//#Preview {
//    TopMenu(toggleMenu: {})
//}
