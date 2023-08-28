//
//  ShopSectionView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/27/23.
//

import SwiftUI

struct ShopSectionsView: View {
    @ObservedObject var viewModel: ShopViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            HStack (alignment: .bottom, spacing: 7) { // Set alignment to .bottom
                SectionButton(title: "Mechs", selectedSection: $viewModel.selectedSection, currentSection: .mechs)
                SectionButton(title: "Armor", selectedSection: $viewModel.selectedSection, currentSection: .armor)
                SectionButton(title: "Weapons", selectedSection: $viewModel.selectedSection, currentSection: .weapons)
                SectionButton(title: "Clothes", selectedSection: $viewModel.selectedSection, currentSection: .clothes)
            }
            .frame(width: 400, height: 50)
            .font(.system(size: 16))
            .padding(.top)

            Rectangle()
                .fill(Color.white)
                .frame(height: 1)
                .padding(.bottom)
        }
    }
}




struct ShopSectionsView_Previews: PreviewProvider {
    static var previews: some View {
        let previewViewModel = ShopViewModel()
        ShopSectionsView(viewModel: previewViewModel)
    }
}


