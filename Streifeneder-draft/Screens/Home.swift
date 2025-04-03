//
//  ContentView.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 02.04.25.
//

import SwiftUI

struct Home: View {
    
    @State private var menuOpened = false
    
    var body: some View {
        NavigationStack {
        ZStack {
            Color("backgroundBlack").ignoresSafeArea()
          
                VStack {
                    TopMenu(toggleMenu: toggleMenu)
                        .foregroundColor(.white)
                        .padding(.leading)
                    
                    ScrollView {
                        VStack (spacing: 0) {
                            JumboImage()
                            
                            ProductsCarousel()
                                .padding(.leading)
                                .background(Color.background)
                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .topLeading)
                }
            SideMenu(width: UIScreen.main.bounds.width / 1.1, menuOpened: $menuOpened, toggleMenu: toggleMenu)
                         .offset(x: menuOpened ? 0 : -UIScreen.main.bounds.width)
                         .animation(.easeInOut(duration: 0.3), value: menuOpened)
                 }
             }
         }
    func toggleMenu() {
           withAnimation {
               menuOpened.toggle()
           }
       }
}

#Preview {
    NavigationStack {
        Home()
            .environmentObject(NavigationManager())
    }
}

