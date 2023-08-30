//
//  ShopViewModel.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/27/23.
//

import SwiftUI



// Enums and auxiliary types that are specific to this ViewModel can be placed at the top.
enum ShopSection {
    case mechs
    case armor
    case weapons
    case lorems
    case clothes
}

class ShopViewModel: ObservableObject {
    // Selected section
    @Published var selectedSection: ShopSection = .mechs

    // This is just sample data, you'd probably fetch this from some source or it might be more complex
    var mechs: [ShopItem] = [
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech B", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech C", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech D", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech E", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech F", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech G", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech H", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech I", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        ShopItem(name: "Mech A", description: "This is a powerful Mech", price: 1000.0),
        // Add more items...
    ]

    var armors: [ShopItem] = [
        ShopItem(name: "Armor A", description: "Protects from heavy fire", price: 500.0),
        // Add more items...
    ]
    
    var weapons: [ShopItem] = [
        ShopItem(name: "Weapon A", description: "This is a powerful Weapon", price: 1000.0),
    ]
    
    var clothes: [ShopItem] = [
        ShopItem(name: "Clothes A", description: "This is a powerful Shirt", price: 1000.0),
    ]
    
    let carouselImages: [ImageCarouselItem] = [
        ImageCarouselItem(imageName: "shopPlaceholder1"),
        ImageCarouselItem(imageName: "shopPlaceholder2"),
        ImageCarouselItem(imageName: "shopPlaceholder3"),
        ImageCarouselItem(imageName: "shopPlaceholder4")
    ]

    lazy var imageCarouselViewModel: ImageCarouselViewModel = {
        var model = ImageCarouselViewModel()
        model.images = carouselImages
        return model
    }()
}


