//
//  TopNavbarViewModel.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI

class TopNavbarViewModel: ObservableObject {
    @Published var health: Double = 0.75
    @Published var energy: Double = 0.5
    @Published var stamina: Double = 0.25
    @Published var money: Int = 9999999
    @Published var specialMoney: Int = 50
    @Published var playerLevel: Int = 86
    @Published var playerExperiencePoints: Int = 25000
    @Published var currentLevelExperiencePoints: Int = 100000
    
    var progress: Double {
        return Double(playerExperiencePoints) / Double(currentLevelExperiencePoints)
    }
}

