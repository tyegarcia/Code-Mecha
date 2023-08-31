//
//  HomeViewModel.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var imageCarouselViewModel: ImageCarouselViewModel
    @Published var tableHomeViewModel: TableHomeViewModel = TableHomeViewModel(title: "Explore Code Mecha", items: [
        [TableItem(imageName: "tshirt.fill", text: "COSMETIC CYBERWEAR"),
         TableItem(imageName: "building.2.fill", text: "NIGHTCITY")],
        [TableItem(imageName: "house.fill", text: "CYBER MART"),
         TableItem(imageName: "bitcoinsign.square.fill", text: "BLACKMARKET")],
        [TableItem(imageName: "house.fill", text: "CYBER MART"),
         TableItem(imageName: "bitcoinsign.square.fill", text: "BLACKMARKET")],
        [TableItem(imageName: "building.columns.fill", text: "BANK OF X"),
         TableItem(imageName: "house.lodge.fill", text: "TRADING POST")]
    ], actionTitle: "Click Me!", centeredImageName: "house.and.flag.fill", centeredText: "CALIBRATION STATION")
    
    let carouselImages: [ImageCarouselItem] = [
        ImageCarouselItem(imageName: "placeholder1"),
        ImageCarouselItem(imageName: "placeholder2"),
        ImageCarouselItem(imageName: "placeholder3"),
        ImageCarouselItem(imageName: "placeholder4")
    ]
    
    init() {
        self.imageCarouselViewModel = ImageCarouselViewModel(images: carouselImages)
    }
}
