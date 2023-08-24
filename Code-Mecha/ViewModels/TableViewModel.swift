//
//  TableViewModel.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI

class TableHomeViewModel: ObservableObject {
    @Published var title: String
    @Published var items: [[TableItem]]
    @Published var actionTitle: String
    @Published var centeredImageName: String
    @Published var centeredText: String
    
    init(title: String, items: [[TableItem]], actionTitle: String, centeredImageName: String, centeredText: String) {
        self.title = title
        self.items = items
        self.actionTitle = actionTitle
        self.centeredImageName = centeredImageName
        self.centeredText = centeredText
    }

    func performAction(for item: TableItem) {
        // Implement the action for the clicked item here
        print("Item clicked: \(item.text)")
    }
}

