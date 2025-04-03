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
            Color.black.ignoresSafeArea()
          
                VStack {
                    TopMenu(toggleMenu: toggleMenu)
                        .foregroundColor(.white)
                        .padding(.leading)
                    
                    ScrollView {
                        VStack (spacing: 0) {
                            ZStack {
                                
                                Image("background")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width, height: 300)
                                    .clipped()
                                    .overlay(
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
                                            .padding(.trailing, 10)
                                            .padding(.bottom, 8)
                                        , alignment: .bottomTrailing
                                    )
                            }
                            .padding()
                            .frame(maxWidth: .infinity,  alignment: .topLeading)
                            .padding(.bottom)
                            
                            ProductsCarousel()
                                .padding(.leading)
                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .topLeading)
                }
                SideMenu(width: UIScreen.main.bounds.width/1.1, menuOpened: $menuOpened, toggleMenu: toggleMenu)
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
    Home()
}
