//
//  BottomNavbar.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/21/23.
//

import SwiftUI

struct BottomNavbar: View {
    var body: some View {
        HStack(spacing: 20) {
            VStack {
                // Home Button
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 30, height: 25)
                Text("Home")
            } .onTapGesture {
                // Action for home button tap
            }
            
            VStack {
                // Mission Button
                Image(systemName: "book.closed.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Missions")
            } .onTapGesture {
                // Action for home button tap
            }
            
            VStack {
                // Shop Button
                Image(systemName: "cart.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Shop")
            } .onTapGesture {
                // Action for home button tap
            }
            
            VStack {
                // Inventory Button
                Image(systemName: "bag.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Inventory")
            } .onTapGesture {
                // Action for home button tap
            }
            
            VStack {
                // Settings Button
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Settings")
            } .onTapGesture {
                // Action for home button tap
            }
        }
        .frame(height: 75)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.horizontal, 5)
        .background(Color.gray)
        .border(Color.black, width: 1)
    
    }
    
}

struct BottomNavbar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue
            
            BottomNavbar()
        }
    }
}
