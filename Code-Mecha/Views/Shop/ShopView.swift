//
//  ShopView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/27/23.
//

import SwiftUI

struct ShopView: View {
    @ObservedObject var viewModel = ShopViewModel()
    
    @State private var isSticky: Bool = false
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                TopNavbar(viewModel: TopNavbarViewModel()) // Navbar at the top
                
                ZStack {
                    ScrollView {
                        GeometryReader { geometry -> Color in
                            let minY = geometry.frame(in: .global).minY
                            if minY <= 0 && !self.isSticky {
                                DispatchQueue.main.async {
                                    self.isSticky = true
                                }
                            } else if minY > 0 && self.isSticky {
                                DispatchQueue.main.async {
                                    self.isSticky = false
                                }
                            }
                            return Color.clear
                        }
                        .frame(height: 0)
                        
                        ImageCarousel(viewModel: viewModel.imageCarouselViewModel)
                        Spacer().frame(height: 5)
//                            .padding(.bottom, 5)
                        
                        ShopSectionsView(viewModel: viewModel)
                            .opacity(isSticky ? 0 : 1) // This will hide the original ShopSectionsView
                            .padding(.top, 5)
                        
                        VStack {
                            Spacer().frame(height: 11)
                            switch viewModel.selectedSection {
                            case .mechs:
                                MechView(items: viewModel.mechs)
                            case .armor:
                                ArmorView(items: viewModel.armors)
                            case .weapons:
                                WeaponView(items: viewModel.weapons)
                            case .lorems, .clothes:
                                ClothesView(items: viewModel.clothes)
                            }
                        }
                        .padding(.bottom, 50)
                    }
                    
                    if isSticky {
                        VStack {
                            ShopSectionsView(viewModel: viewModel)
                                .frame(maxWidth: .infinity)
                                .background(Color.black)
                            Spacer()
                        }
                        .zIndex(1)
                    }
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
