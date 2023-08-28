//
//  ShopItem.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/27/23.
//

import SwiftUI

struct ShopItem: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var price: Double
}
