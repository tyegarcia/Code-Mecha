//
//  Navbar.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/20/23.
//

import SwiftUI

struct TopNavbar: View {
    @State private var health: Double = 0.75 // Example state for health bar
    @State private var energy: Double = 0.5 // Example state for energy bar
    @State private var stamina: Double = 0.25 // Example state for stamina bar
    @State private var money: Int = 9999999 // Example state for money
    @State private var specialMoney: Int = 50 // Example state for special money
    @State private var PlayerLevel: Int = 86 // Example state for player level
    @State private var PlayerExperiencePoints: Int = 25000 // Example state for player experience points
    @State private var CurrentLevelExperiencePoints: Int = 100000 // Example state for current level experience points
    
    private var progress: Double {
            return Double(PlayerExperiencePoints) / Double(CurrentLevelExperiencePoints)
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
               
                StatBox(imageName: "heart.fill", value: health)
                    .onTapGesture {
                        // Action for health tap
                    }
                
                StatBox(imageName: "bolt.fill", value: energy)
                    .onTapGesture {
                        // Action for health tap
                    }
                StatBox(imageName: "figure.martial.arts", value: stamina)
                    .onTapGesture {
                        // Action for health tap
                    }
            
            // Money Box
            VStack(alignment: .leading, spacing: 17) {
                
                HStack {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("\(money)")
                        .font(.system(size: 12))
                }

                HStack {
                    Image(systemName: "bitcoinsign.circle.fill")
                    Text("\(specialMoney)")
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
                Text("Level \(PlayerLevel)")
                    .font(.system(size: 12))
                    .padding(.leading, 10)
                    .onTapGesture {
                        // Action for level tap
                    }
                Spacer()
                
                ZStack {
                    ProgressBar(value: progress, height: 25, width: 225)
                        .frame(width: 225) // Specify the size you want here
                    
                    Text("\(PlayerExperiencePoints) / \(CurrentLevelExperiencePoints) XP")
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

// Progress Bar component
struct ProgressBar: View {
    
    var value: Double
    var height: CGFloat = 7 // Add this line to set a default height
    var width: CGFloat = 40 // Add this line to set a default width
    
    var body: some View {
        VStack {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .frame(width: width, height: height) // Use the custom width and height here
                            .cornerRadius(height / 2)
                            .foregroundColor(Color.black)

                        Rectangle()
                            .frame(width: CGFloat(value) * width, height: height) // Multiply the value by the custom width
                            .cornerRadius(height / 2)
                            .foregroundColor(Color.blue)
                    }
                }
                
    }
    
}


func StatBox(imageName: String, value: Double) -> some View {
    VStack {
        HStack {
            Image(systemName: imageName)
            ProgressBar(value: value)
                .frame(width: 50, height: 5) // Define specific size if needed
        }
        .frame(width:70)
        .frame(height: 30)
        .padding(.bottom, 3)
        Text("\(value, specifier: "%.2f")")
            .font(.system(size: 12))
    }
}




struct Navbar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavbar()
    }
}


