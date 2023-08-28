//
//  ShopView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/27/23.
//

import SwiftUI

struct ShopView: View {
    
    @ObservedObject var viewModel = ShopViewModel()
    let shopSectionsVM = ShopSectionsViewModel() // Instantiate the ViewModel for the sections component
    
    @Binding var selectedTab: BottomNavbar.Tab
    
    var body: some View {
        ZStack {
            Color.green
            VStack {
                TopNavbar(viewModel: TopNavbarViewModel()) // Navbar at the top

                // Use the ShopSectionsView component
                ShopSectionsView(viewModel: viewModel)

                // Content based on selection
                GeometryReader { geometry in
                    ScrollView {
                        VStack {
                            switch viewModel.selectedSection {
                            case .mechs:
                                MechView(items: viewModel.mechs)
                            case .armor:
                                ArmorView(items: viewModel.armors)
                            case .weapons:
                                WeaponView(items: viewModel.weapons)
                            case .lorems:
                                ClothesView(items: viewModel.clothes)
                            case .clothes:
                                ClothesView(items: viewModel.clothes)
                            
                            }
                        }
                    }
                }
                        
                BottomNavbar(selectedTab: $selectedTab) // Navbar at the bottom
            }
        }
    }
}


struct ShopView_Previews: PreviewProvider {
    @State static var previewTab = BottomNavbar.Tab.shop

    static var previews: some View {
        ShopView(selectedTab: $previewTab)
    }
}
