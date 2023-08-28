//
//  HomeView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/19/23.
//

import SwiftUI
import CoreData

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    @Binding var selectedTab: BottomNavbar.Tab
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                TopNavbar(viewModel: TopNavbarViewModel()) // Navbar at the top
                
                GeometryReader { geometry in
                    ScrollView {
                        VStack {
                            ImageCarousel(viewModel: viewModel.imageCarouselViewModel)
//                                .frame(height: geometry.size.height * 0.4) // adjust as needed
                            Spacer().frame(height: 11)
                            TableHome(viewModel: viewModel.tableHomeViewModel)
                                .frame(height: geometry.size.height * 0.5) // adjust as needed
                            Spacer().frame(height: 11)
                            TableHome(viewModel: viewModel.tableHomeViewModel)
                                .frame(height: geometry.size.height * 0.5) // adjust as needed
                        }
                        
                    }
                    
                }
                
//                .border(Color.red)
                
                BottomNavbar(selectedTab: $selectedTab) // Navbar at the bottom
            }
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    @State static var previewTab = BottomNavbar.Tab.home

    static var previews: some View {
        HomeView(viewModel: HomeViewModel(), selectedTab: $previewTab)
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

