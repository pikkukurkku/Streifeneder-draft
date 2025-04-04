//
//  BottomNav.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI



struct BottomNav: View {
    @State private var selectedItem: BottomNavItem?
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(colorScheme == .dark ? .black : .white)
                .frame(height: 120)
                .shadow(color: Color(hex: "#B9BFC5"), radius: 10)
            HStack(spacing: 25) {
                
                ForEach(BottomNavItem.allCases, id: \.self) { item in
                    Button(action: {
                        if item == .verkaufen {
                            selectedItem = .verkaufen
                        } else {
                            
                        }
                    }) {
                        VStack(spacing: 10) {
                            Image(systemName: item.systemImageName)
                                .foregroundColor(colorScheme == .dark ? .gray : .black)
                                .imageScale(.large)
                            Text(item.title)
                                .font(.caption2)
                                .foregroundColor(.gray)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .ignoresSafeArea()
                .font(.title3)
            }
            .padding()
            .sheet(item: $selectedItem) { item in
                if item == .verkaufen {
                    InsertYourItem()
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
}
    
    #Preview {
        
        BottomNav()
    }
    
