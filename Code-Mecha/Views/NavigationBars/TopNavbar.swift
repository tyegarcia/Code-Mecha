//
//  Navbar.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/20/23.
//

import SwiftUI

struct TopNavbar: View {
    @ObservedObject var viewModel: TopNavbarViewModel
    
    private var progress: Double {
        return Double(viewModel.playerExperiencePoints) / Double(viewModel.currentLevelExperiencePoints)
    }
    var body: some View {
        VStack(spacing: 0) {
            // Top Navbar stack
            
            HStack(spacing: 10) {
                // Profile Picture Box
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width:50, height: 50)
                    .onTapGesture {
                        // Action for profile picture tap
                    }
                
                StatBox(imageName: "heart.fill", value: viewModel.health)
                    .onTapGesture {
                        // Action for health tap
                    }
                
                StatBox(imageName: "bolt.fill", value: viewModel.energy)
                    .onTapGesture {
                        // Action for health tap
                    }
                StatBox(imageName: "figure.martial.arts", value: viewModel.stamina)
                    .onTapGesture {
                        // Action for health tap
                    }
                
                // Money Box
                VStack(alignment: .leading, spacing: 17) {
                    
                    HStack {
                        Image(systemName: "dollarsign.circle.fill")
                        Text("\(viewModel.money)")
                            .font(.system(size: 12))
                    }
                    
                    HStack {
                        Image(systemName: "bitcoinsign.circle.fill")
                        Text("\(viewModel.specialMoney)")
                            .font(.system(size: 12))
                    }
                }
                .frame(maxHeight: .infinity)
                .frame(width: 90)
                .onTapGesture {
                    // Action for money tap
                }
            }
            .frame(height: 100)
            .frame(width: UIScreen.main.bounds.width)
            .padding(.horizontal, 5)
            .background(Color.gray.brightness(0.1))
            
            HStack {
                Text("Level \(viewModel.playerLevel)")
                    .font(.system(size: 12))
                    .padding(.leading, 10)
                    .onTapGesture {
                        // Action for level tap
                    }
                Spacer()
                
                ZStack {
                    ProgressBar(value: progress, height: 25, width: 225)
                        .frame(width: 225) // Specify the size you want here
                    
                    Text("\(viewModel.playerExperiencePoints) / \(viewModel.currentLevelExperiencePoints) XP")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    
                }
                .padding(.horizontal, 10)
                
                
                .background(Color.gray.opacity(0.2))
                
                Image(systemName: "arrowtriangle.down.fill")
                    .font(.system(size: 12))
                    .padding(.horizontal, 25)
                    .onTapGesture {
                        // Action for level tap
                    }
                
                
            }
            
            .frame(height: 40)
            .background(Color.gray)
            
        }
    }
}



struct Navbar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavbar(viewModel: TopNavbarViewModel())
    }
}


