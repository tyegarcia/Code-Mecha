//
//  AppEnums.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/28/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home, missions, shop, inventory, settings
}

extension Tab {
    var imageName: String {
        switch self {
        case .home:
            return "house.fill"
        case .missions:
            return "book.closed.fill"
        case .shop:
            return "cart.fill"
        case .inventory:
            return "bag.fill"
        case .settings:
            return "gearshape.fill"
        }
    }
}
