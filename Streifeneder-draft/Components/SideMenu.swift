//
//  SideMenu.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 02.04.25.
//

import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    let text: String
    let imageName: String
}

struct MenuContent: View {
    
    let items: [MenuItem] = [
        MenuItem(text: "Produkte", imageName: "cart.fill"),
        MenuItem(text: "Diagnosen", imageName: "stethoscope"),
        MenuItem(text: "Marktplatz", imageName: "bag.fill"),
        MenuItem(text: "Standorte", imageName: "map.fill"),
        MenuItem(text: "Terminvereinbarung", imageName: "calendar"),
        MenuItem(text: "Rezept-Upload", imageName: "doc.fill"),
        MenuItem(text: "Kontakt", imageName: "phone.fill"),
    ]
    
    @State private var showMarketplace = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.white).ignoresSafeArea()
                VStack(alignment: .leading, spacing: 12) {
                    Spacer()
                    ForEach(items) { item in
                                    if item.text == "Marktplatz" {
                                        // Direct navigation for Marktplatz
                                        NavigationLink(destination: MarketplaceView()) {
                                            RoundedRectangle(cornerRadius: 12)
                                                .fill(Color.gray.opacity(0.6))
                                                .frame(width: 250, height: 50)
                                                .shadow(color: .black.opacity(0.2), radius: 4, x: 2, y: 2)
                                                .overlay(
                                                    HStack {
                                                        Image(systemName: item.imageName)
                                                            .foregroundColor(.white)
                                                            .frame(width: 20, alignment: .center)
                                                            .padding(.leading, 10)
                                                        
                                                        Text(item.text)
                                                            .font(.body)
                                                            .bold()
                                                            .foregroundColor(.white)
                                                            .frame(maxWidth: .infinity, alignment: .leading)
                                                        
                                                        Text("Neu!")
                                                            .font(.callout)
                                                            .bold()
                                                            .foregroundColor(.white)
                                                            .padding(8)
                                                            .background(Color.blue.opacity(0.7))
                                                            .cornerRadius(8)
                                                            .padding(.trailing, 10)
                                                    }
                                                )
                                        }
                                        .buttonStyle(PlainButtonStyle()) // Removes button styling
                                    } else {
                                        // Regular menu items
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.gray.opacity(0.6))
                                            .frame(width: 250, height: 50)
                                            .shadow(color: .black.opacity(0.2), radius: 4, x: 2, y: 2)
                                            .overlay(
                                                HStack {
                                                    Image(systemName: item.imageName)
                                                        .foregroundColor(.white)
                                                        .frame(width: 20, alignment: .center)
                                                        .padding(.leading, 10)
                                                    
                                                    Text(item.text)
                                                        .font(.body)
                                                        .bold()
                                                        .foregroundColor(.white)
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                }
                                            )
                                    }
                                }
                    Spacer()
                    }
         
                }
                .padding()
                .frame(maxHeight: .infinity, alignment: .top)
            }
        }
    }





struct SideMenu: View {
    
    let width: CGFloat
    @Binding var menuOpened: Bool
    let toggleMenu: () -> Void
    
    var body: some View {
        ZStack {
            if menuOpened {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
                    .onTapGesture {
                        toggleMenu()
                    }
                    .transition(.opacity)
            }
            
            HStack {
                MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0 : -width)
                    .animation(.easeInOut(duration: 0.3), value: menuOpened)
                
                Spacer()
            }
        }
        .allowsHitTesting(menuOpened)
        .animation(.easeInOut(duration: 0.3), value: menuOpened)
        .ignoresSafeArea()
    }
}

#Preview {
    @State var menuOpened = true
    
    return SideMenu(
        width: UIScreen.main.bounds.width / 1.6,
        menuOpened: $menuOpened,
        toggleMenu: { menuOpened.toggle() }
    )
}

