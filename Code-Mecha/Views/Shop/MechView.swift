//
//  MechView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/27/23.
//

import SwiftUI

struct MechView: View {
    var items: [ShopItem]

    var body: some View {
        ForEach(items) { item in
            Text(item.name)
            Text(item.description)
            Text("\(item.price)")
        }
    }
}

