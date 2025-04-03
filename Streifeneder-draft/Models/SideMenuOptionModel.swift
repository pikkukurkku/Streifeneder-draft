//
//  SideMenuOptionModel.swift
//  Streifeneder-draft
//
//  Created by Natalia Ogorek on 03.04.25.
//

import Foundation


enum SideMenuOptionModel: Int, CaseIterable {
    case produkte
    case diagnosen
    case marktplatz
    case standorte
    case terminvereinbarung
    case rezeptupload
    case kontakt
    
    var title: String {
        switch self {
        case .produkte:
            return "Produkte"
        case .diagnosen:
            return "Diagnosen"
        case .marktplatz:
            return "Marktplatz"
        case .standorte:
            return "Standorte"
        case .terminvereinbarung:
            return "Terminvereinbarung"
        case .rezeptupload:
            return "Rezept-Upload"
        case .kontakt:
            return "Kontakt"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .produkte:
            return "cart.fill"
        case .diagnosen:
            return "stethoscope"
        case .marktplatz:
            return "bag.fill"
        case .standorte:
            return "map.fill"
        case .terminvereinbarung:
            return "calendar"
        case .rezeptupload:
            return "doc.fill"
        case .kontakt:
            return "phone.fill"
        }
    }
}


//let items: [MenuItem] = [
//    MenuItem(text: "Produkte", imageName: "cart.fill"),
//    MenuItem(text: "Diagnosen", imageName: "stethoscope"),
//    MenuItem(text: "Marktplatz", imageName: "bag.fill"),
//    MenuItem(text: "Standorte", imageName: "map.fill"),
//    MenuItem(text: "Terminvereinbarung", imageName: "calendar"),
//    MenuItem(text: "Rezept-Upload", imageName: "doc.fill"),
//    MenuItem(text: "Kontakt", imageName: "phone.fill"),
//]
