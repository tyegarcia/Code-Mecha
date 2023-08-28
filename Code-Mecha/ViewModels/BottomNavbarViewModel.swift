//
//  BottomNavbarViewModel.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI

class BottomNavbarViewModel: ObservableObject {
    @Published var selectedTab: Tab = .home
    
    func imageName(for tab: Tab) -> String {
        return tab.imageName
    }
}

