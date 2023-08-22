//
//  ContentView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/19/23.
//

import SwiftUI
import CoreData

struct HomeView: View {
    
    let carouselImages: [ImageCarouselItem] = [
            ImageCarouselItem(imageName: "placeholder1"),
            ImageCarouselItem(imageName: "placeholder2"),
            ImageCarouselItem(imageName: "placeholder3"),
            ImageCarouselItem(imageName: "placeholder4"),
        ]
    
    var body: some View {
        ZStack {
            Color.green
//                .ignoresSafeArea()
            VStack {
                TopNavbar() // Navbar at the top
                
                ImageCarousel(images: carouselImages)
                
                Spacer() // Pushes the Navbar to the top
                
                BottomNavbar() // Navbar at the bottom
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
