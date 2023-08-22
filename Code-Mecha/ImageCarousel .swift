//
//  ImageCarousel .swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/21/23.
//

import SwiftUI

struct ImageCarouselItem: Identifiable {
    let id = UUID()
    let imageName: String
}

struct ImageCarousel: View {
    let images: [ImageCarouselItem]
    @State private var selection: Int = 0
    
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            // Carousel
            TabView(selection: $selection) {
                ForEach(images.indices, id: \.self) { index in
                    let item = images[index]
                    ZStack {
                        Image(item.imageName)
                            .resizable()
//                            .scaledToFill()
                            .frame(height: 225)
                            .cornerRadius(8)
                            .overlay(
                                LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.7), .black.opacity(0.9)]), startPoint: .center, endPoint: .bottom)
                                    .cornerRadius(8)
                                    .frame(height: 225)
                                
                            )
                            .overlay(
                                Text("Lorem Ipsum Text Here")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .padding([.bottom, .leading], 25),
                                alignment: .bottomLeading
                            )
                    }
                }
            }
            .frame(height: 225)
            .onReceive(timer) { _ in
                withAnimation {
                    selection = (selection + 1) % images.count
                }
            }
            
            // Left Arrow
            Button(action: {
                withAnimation {
                    selection = (selection - 1 + images.count) % images.count
                }
            }) {
                Image(systemName: "arrow.left")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.2))
                    .clipShape(Circle())
            }
            .padding(.leading, 10)
            .padding(.bottom, 50)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Right Arrow
            Button(action: {
                withAnimation {
                    selection = (selection + 1) % images.count
                }
            }) {
                Image(systemName: "arrow.right")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.2))
                    .clipShape(Circle())
            }
            .padding(.trailing, 10)
            .padding(.bottom, 50)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        
    }
    
}



struct ImageCarousel_Previews: PreviewProvider {
    static var carouselImages: [ImageCarouselItem] = [
        ImageCarouselItem(imageName: "placeholder1"),
        ImageCarouselItem(imageName: "placeholder2"),
        ImageCarouselItem(imageName: "placeholder3"),
        ImageCarouselItem(imageName: "placeholder4")
    ]
    
    static var previews: some View {
        ZStack {
            Color.green
            ImageCarousel(images: carouselImages)
        }
    }
}
