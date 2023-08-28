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
    
    @State private var selectedTab: Tab = .home

    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                HomeView(viewModel: HomeViewModel())
                    .tabItem {
                        Image(systemName: Tab.home.imageName)
                        Text(Tab.home.rawValue.capitalized)
                    }
                    .tag(Tab.home)

                Text("Missions View")
                    .tabItem {
                        Image(systemName: Tab.missions.imageName)
                        Text(Tab.missions.rawValue.capitalized)
                    }
                    .tag(Tab.missions)

                ShopView(viewModel: ShopViewModel())
                    .tabItem {
                        Image(systemName: Tab.shop.imageName)
                        Text(Tab.shop.rawValue.capitalized)
                    }
                    .tag(Tab.shop)

                Text("Inventory View")
                    .tabItem {
                        Image(systemName: Tab.inventory.imageName)
                        Text(Tab.inventory.rawValue.capitalized)
                    }
                    .tag(Tab.inventory)

                Text("Settings View")
                    .tabItem {
                        Image(systemName: Tab.settings.imageName)
                        Text(Tab.settings.rawValue.capitalized)
                    }
                    .tag(Tab.settings)
            }
        }
    }
}
