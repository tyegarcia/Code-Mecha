//
//  ContentView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/19/23.
//

import SwiftUI
import CoreData

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        ZStack {
            Color.green
            VStack {
                TopNavbar(viewModel: TopNavbarViewModel()) // Navbar at the top
                ImageCarousel(viewModel: viewModel.imageCarouselViewModel) // Pass the ImageCarouselViewModel
                Spacer() // Pushes the Navbar to the top
                BottomNavbar() // Navbar at the bottom
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
