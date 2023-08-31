//
//  ImageCarousel .swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/21/23.
//

import SwiftUI

struct ImageCarousel: View {
    @ObservedObject var viewModel: ImageCarouselViewModel
    
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
        
    var body: some View {
        ZStack {
            Color.black
            // Carousel
            TabView(selection: $viewModel.selection) {
                ForEach(viewModel.images.indices, id: \.self) { index in
                    let item = viewModel.images[index]
                    ZStack {
                        Image(item.imageName)
                            .resizable()
                        //                            .scaledToFill()
                        //                            .aspectRatio(contentMode: .fill)
                            .frame(height: 250)
                            .clipped()
                            .cornerRadius(8)
                            .overlay(
                                LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.7), .black.opacity(0.9)]), startPoint: .center, endPoint: .bottom)
                                    .cornerRadius(8)
                                    .frame(height: 250)
                                
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
            .offset(y: 12)
            .padding(.top, -11)
            .cornerRadius(8)
//            .border(Color.red, width: 1)
            
            // Left Arrow
            Button(action: {
                withAnimation {
                    viewModel.selection = (viewModel.selection - 1 + viewModel.images.count) % viewModel.images.count
                }
            }) {
                Image(systemName: "arrow.left")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.2))
                    .clipShape(Circle())
            }
            .padding(.leading, 10)
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Right Arrow
            Button(action: {
                withAnimation {
                    viewModel.selection = (viewModel.selection + 1) % viewModel.images.count
                }
            }) {
                Image(systemName: "arrow.right")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.2))
                    .clipShape(Circle())
            }
            .padding(.trailing, 10)
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            
        }
        .onReceive(timer) { _ in
            withAnimation {
                viewModel.selection = (viewModel.selection + 1) % viewModel.images.count
            }
            
        }
    }
}



//struct ImageCarousel_Previews: PreviewProvider {
//    static var previews: some View {
//        ZStack {
//            Color.green
//            ImageCarousel(viewModel: ImageCarouselViewModel())
//        }
//    }
//}
