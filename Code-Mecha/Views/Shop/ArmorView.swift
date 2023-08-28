//
//  ArmorView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/27/23.
//

import SwiftUI

struct ArmorView: View {
    var items: [ShopItem]
    var body: some View {
        VStack {
            ForEach(items) { item in
                Text(item.name)
                Text(item.description)
                Text("\(item.price)")
            }
        }
    }
}
