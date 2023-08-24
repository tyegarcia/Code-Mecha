//
//  ImageCarouselViewModel.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI
import Combine

class ImageCarouselViewModel: ObservableObject {
    @Published var selection: Int = 0
    @Published var images: [ImageCarouselItem] = [
        ImageCarouselItem(imageName: "placeholder1"),
        ImageCarouselItem(imageName: "placeholder2"),
        ImageCarouselItem(imageName: "placeholder3"),
        ImageCarouselItem(imageName: "placeholder4")
    ]
}
