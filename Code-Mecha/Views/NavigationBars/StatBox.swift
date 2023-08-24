//
//  StatBox.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI

func StatBox(imageName: String, value: Double) -> some View {
    VStack {
        HStack {
            Image(systemName: imageName)
            ProgressBar(value: value)
                .frame(width: 50, height: 5)
        }
        .frame(width: 70)
        .frame(height: 30)
        .padding(.bottom, 3)
        Text("\(value, specifier: "%.2f")")
            .font(.system(size: 12))
    }
}

