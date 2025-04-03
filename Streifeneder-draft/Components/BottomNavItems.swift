//
//  BottomNavItems.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import Foundation



enum BottomNavItem: Int, CaseIterable {
    case home
    case favoriten
    case verkaufen
    case nachrichten
    case profil
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .favoriten:
            return "Favoriten"
        case .verkaufen:
            return "Verkaufen"
        case .nachrichten:
            return "Nachrichten"
        case .profil:
            return "Profil"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .home:
            return "house.fill"
        case .favoriten:
            return "heart"
        case .verkaufen:
            return "plus.circle"
        case .nachrichten:
            return "bubble.left.and.bubble.right"
        case .profil:
            return "person"
        }
    }
}
