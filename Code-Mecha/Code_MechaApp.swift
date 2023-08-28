//
//  Code_MechaApp.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/19/23.
//

import SwiftUI

@main
struct Code_MechaApp: App {
    let persistenceController = PersistenceController.shared
    
    @State private var selectedTab: BottomNavbar.Tab = .home

    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel(), selectedTab: $selectedTab)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

