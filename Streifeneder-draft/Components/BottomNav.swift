//
//  BottomNav.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI



struct BottomNav: View {
    
    
    var body: some View {

            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(height: 120)
                    .shadow(color: Color(hex: "#B9BFC5"), radius: 10)
                HStack(spacing: 25) {
                    
                    ForEach(BottomNavItem.allCases, id: \.self) { item in
                                       VStack(spacing: 10) {
                                           Image(systemName: item.systemImageName)
                                               .foregroundColor(.black)
                                               .imageScale(.large)
                                           Text(item.title)
                                               .font(.caption2)
                                               .foregroundColor(.gray)
                                       }
                                   }
                               }
                .padding()
                .ignoresSafeArea()
                
                .font(.title3)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
    
    
    
    #Preview {
        
        BottomNav()
    }
    
