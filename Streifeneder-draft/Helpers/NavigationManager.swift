//
//  NavigationManager.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import SwiftUI

class NavigationManager: ObservableObject {
    @Published var path = NavigationPath()

    func navigateToHome() {
        // Reset the navigation stack to remove all previous views
        path.removeLast(path.count)
        path.append("home") // Append "home" to the stack after reset
    }
}


