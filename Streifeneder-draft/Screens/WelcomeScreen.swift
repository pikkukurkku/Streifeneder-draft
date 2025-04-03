//
//  WelomeScreen.swift
//  Streifeneder
//
//  Created by Natalia Ogorek on 02.04.25.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @State private var navigateToHome = false
    
    @State private var isPulsing = false
    @State private var isLoading = true
    
    var body: some View {
        NavigationStack {
                VStack {
      Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.width * 0.8)
            .cornerRadius(10)
            .padding()
//            .scaleEffect(isPulsing ? 0.8 : 0.9) // Pulsing inward and outward
//                  .animation(
//                           Animation.easeInOut(duration: 2.2) // Smooth animation
//                               .repeatForever(autoreverses: true) // Loops animation
//                       )
//                       .onAppear {
//                           isPulsing.toggle()
//                       }
                       .background(
                        Image("background")
                            .resizable()
                            .scaledToFill()
                            .frame(height: UIScreen.main.bounds.height * 1.1)
                            .offset(x: -UIScreen.main.bounds.width * -0.7) // Shift left to show the right part
                            .opacity(0.8)
                       )
                }
                           .onAppear {
                               DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                                   navigateToHome = true
                               }
                           }
                           .navigationDestination(isPresented: $navigateToHome) {
                               Home()
                                   .navigationBarHidden(true)
                                   .navigationBarBackButtonHidden(true)
                           }
                       }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)

                   }
               }

#Preview {
    WelcomeScreen()
}
