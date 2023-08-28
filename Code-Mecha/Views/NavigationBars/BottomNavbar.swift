//
//  BottomNavbar.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/21/23.
//

import SwiftUI

struct BottomNavbar: View {
    @ObservedObject var viewModel: BottomNavbarViewModel

    init(viewModel: BottomNavbarViewModel) {
        self.viewModel = viewModel
        
        // Modify global appearance
        UITabBar.appearance().barTintColor = UIColor.gray
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
        UITabBar.appearance().tintColor = UIColor.black
        UITabBar.appearance().isTranslucent = false
    }

    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            HomeView(viewModel: HomeViewModel())
                .tabItem {
                    Image(systemName: viewModel.imageName(for: .home))
                        .foregroundColor(Color.gray)
                    Text(Tab.home.rawValue.capitalized)
                        .foregroundColor(Color.gray)
                }
                .tag(Tab.home)

            Text("Missions View")
                .tabItem {
                    Image(systemName: viewModel.imageName(for: .missions))
                        .foregroundColor(Color.gray)
                    Text(Tab.missions.rawValue.capitalized)
                        .foregroundColor(Color.gray)
                }
                .tag(Tab.missions)

            ShopView()
                .tabItem {
                    Image(systemName: viewModel.imageName(for: .shop))
                        .foregroundColor(Color.gray)
                    Text(Tab.shop.rawValue.capitalized)
                        .foregroundColor(Color.gray)
                }
                .tag(Tab.shop)

            Text("Inventory View")
                .tabItem {
                    Image(systemName: viewModel.imageName(for: .inventory))
                        .foregroundColor(Color.gray)
                    Text(Tab.inventory.rawValue.capitalized)
                        .foregroundColor(Color.gray)
                }
                .tag(Tab.inventory)

            Text("Settings View")
                .tabItem {
                    Image(systemName: viewModel.imageName(for: .settings))
                        .foregroundColor(Color.gray)
                    Text(Tab.settings.rawValue.capitalized)
                        .foregroundColor(Color.gray)
                }
                .tag(Tab.settings)
        }
        .accentColor(Color.black)
    }
}

struct BottomNavbar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavbar(viewModel: BottomNavbarViewModel())
    }
}



