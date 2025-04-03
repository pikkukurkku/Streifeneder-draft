//
//  SideMenu.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 02.04.25.
//

import SwiftUI


struct MenuContent: View {
    
    @State private var showMarketplace = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.white).ignoresSafeArea()
                VStack(alignment: .leading, spacing: 12) {
                    Spacer()
                    ForEach(SideMenuOptionModel.allCases, id: \.self) { option in
                        if option == .marktplatz {
                            NavigationLink(destination: MarketplaceView()) {
                                SideMenuBackgroundElement()
                                    .overlay(
                                        HStack {
                                            SideMenuRowView(item: option)
                                            LabelNew()
                                        }
                                    )
                            }
                            .buttonStyle(PlainButtonStyle())
                        } else {
                            SideMenuBackgroundElement()
                                .overlay(
                                    HStack {
                                        SideMenuRowView(item: option)
                                    }
                                )
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct SideMenu: View {
    let width: CGFloat
    @Binding var menuOpened: Bool
    let toggleMenu: () -> Void
    
    @State private var dragOffset: CGFloat = 0
    @State private var isDragging = false
    
    var body: some View {
        ZStack {
            if menuOpened {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
                    .onTapGesture {
                        toggleMenu()
                    }
                    .transition(.opacity) // Fade background when menu is open
            }
            
            HStack {
                MenuContent()
                    .frame(width: width)
                    .offset(x: dragOffset) // Move menu based on dragOffset
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                // Update the drag offset as the user drags
                                if value.translation.width > 0 {
                                    dragOffset = value.translation.width
                                    isDragging = true
                                }
                            }
                            .onEnded { value in
                                // If dragged more than half the width, open the menu
                                if dragOffset > width / 2 {
                                    withAnimation {
                                        menuOpened = true
                                    }
                                } else {
                                    withAnimation {
                                        dragOffset = 0 // Reset the drag offset
                                        menuOpened = false
                                    }
                                }
                                isDragging = false
                            }
                    )
                    .animation(.easeInOut(duration: 0.3), value: dragOffset)
                    .animation(.easeInOut(duration: 0.3), value: menuOpened)
                
                Spacer()
            }
            .animation(.easeInOut(duration: 0.3), value: dragOffset)
            .ignoresSafeArea()
        }
        .allowsHitTesting(menuOpened)
        .ignoresSafeArea()
    }
}

#Preview {
    @State var menuOpened = true
    
    return SideMenu(
        width: UIScreen.main.bounds.width / 1.6,
        menuOpened: $menuOpened,
        toggleMenu: {
            withAnimation {
                menuOpened.toggle()
            }
        }
    )
    .environmentObject(NavigationManager())
}


