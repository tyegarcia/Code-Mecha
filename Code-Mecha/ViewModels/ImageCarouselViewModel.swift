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
    @Published var images: [ImageCarouselItem] = []

    init(images: [ImageCarouselItem]) {
        self.images = images
    }
}
