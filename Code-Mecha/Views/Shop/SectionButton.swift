//
//  SectionButton.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/27/23.
//

import SwiftUI

struct TopRoundedRectangle: Shape {
    var radius: CGFloat
    var bottomStrokeColor: Color = .clear
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: radius))
        path.addArc(center: CGPoint(x: radius, y: radius), radius: radius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
        path.addLine(to: CGPoint(x: rect.width - radius, y: 0))
        path.addArc(center: CGPoint(x: rect.width - radius, y: radius), radius: radius, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        
        return path
    }
}

struct SectionButton: View {
    var title: String
    @Binding var selectedSection: ShopSection
    var currentSection: ShopSection
    
    var isSelected: Bool {
        currentSection == selectedSection
    }

    var body: some View {
        Button(action: {
            selectedSection = currentSection
        }) {
            Text(title)
                .foregroundColor(isSelected ? .white : Color.white.opacity(0.6))
                .frame(width: isSelected ? 90 : 90, height: isSelected ? 50 : 45) // Adjusted width and height
                .background(isSelected ? Color.black.opacity(0.9) : Color.gray)
                .clipShape(TopRoundedRectangle(radius: 8))
                .overlay(
                    TopRoundedRectangle(radius: 8)
                        .stroke(isSelected ? Color.white : Color.gray.opacity(0.9), lineWidth: 1)
                )
        }
    }
}





