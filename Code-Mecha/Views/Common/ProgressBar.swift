//
//  ProgressBar.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI

struct ProgressBar: View {
    var value: Double
    var height: CGFloat = 7
    var width: CGFloat = 40
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: width, height: height)
                    .cornerRadius(height / 2)
                    .foregroundColor(Color.black)

                Rectangle()
                    .frame(width: CGFloat(value) * width, height: height)
                    .cornerRadius(height / 2)
                    .foregroundColor(Color.blue)
            }
        }
    }
}

