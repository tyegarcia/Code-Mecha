//
//  BottomNavbar.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/21/23.
//

import SwiftUI

struct BottomNavbar: View {
    @Binding var selectedTab: Tab
    
    enum Tab: String, CaseIterable {
        case home, missions, shop, inventory, settings
    }

    var body: some View {
        HStack(spacing: 20) {
            ForEach(Tab.allCases, id: \.self) { tab in
                VStack {
                    Image(systemName: tab.imageName)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(tab == selectedTab ? Color.black : Color.black)
                    
                    Text(tab.rawValue.capitalized)
                }
                .onTapGesture {
                    selectedTab = tab
                }
            }
        }
        .frame(height: 75)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.horizontal, 5)
        .background(Color.gray)
        .border(Color.black, width: 1)
    }
}

extension BottomNavbar.Tab {
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

struct ContentView: View {
    @State private var selectedTab: BottomNavbar.Tab = .home

    var body: some View {
            VStack {
                switch selectedTab {
                case .home:
                    HomeView(viewModel: HomeViewModel(), selectedTab: $selectedTab)
                case .missions:
    //                MissionsView()
                    Text("Missions View")
                
                case .shop:
                    ShopView(viewModel: ShopViewModel(), selectedTab: $selectedTab)
                case .inventory:
    //                InventoryView()
                    Text("Inventory View")
                
                case .settings:
    //                SettingsView()
                    Text("Settings View")
            
            }

            BottomNavbar(selectedTab: $selectedTab)
        }
    }
}



struct BottomNavbar_Previews: PreviewProvider {
    static var previews: some View {
        DummyBottomNavbarView()
    }

    struct DummyBottomNavbarView: View {
        @State private var selected: BottomNavbar.Tab = .home
        
        var body: some View {
            BottomNavbar(selectedTab: $selected)
        }
    }
}


