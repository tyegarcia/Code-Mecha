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

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                TopNavbar(viewModel: TopNavbarViewModel()) // Navbar at the top
//
                // Use the ShopSectionsView component
                ShopSectionsView(viewModel: viewModel)
//
                // Content based on selection
                GeometryReader { geometry in
                    ScrollView {
//                        VStack {
//                            switch viewModel.selectedSection {
//                            case .mechs:
//                                MechView(items: viewModel.mechs)
//                            case .armor:
//                                ArmorView(items: viewModel.armors)
//                            case .weapons:
//                                WeaponView(items: viewModel.weapons)
//                            case .lorems:
//                                ClothesView(items: viewModel.clothes)
//                            case .clothes:
//                                ClothesView(items: viewModel.clothes)
//                            }
//                        }
                    }
                    .padding(.bottom, 50)
                }
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
