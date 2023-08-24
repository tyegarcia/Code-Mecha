//
//  HomeViewModel.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var imageCarouselViewModel = ImageCarouselViewModel()
    
    let carouselImages: [ImageCarouselItem] = [
        ImageCarouselItem(imageName: "placeholder1"),
        ImageCarouselItem(imageName: "placeholder2"),
        ImageCarouselItem(imageName: "placeholder3"),
        ImageCarouselItem(imageName: "placeholder4")
    ]
}

