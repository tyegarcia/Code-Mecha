//
//  TableHome.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/23/23.
//

import SwiftUI

struct TableHome: View {
    @ObservedObject var viewModel: TableHomeViewModel
    
    var body: some View {
        VStack {
            // Title Section
            HStack {
                Text(viewModel.title)
                    .font(.system(size: 14))
                    .foregroundStyle(.black)
            }
            .frame(maxWidth: .infinity, maxHeight: 20)
            .background(Color.gray)
            .cornerRadius(8)

            // Table Section
            VStack {
                ForEach(viewModel.items.indices, id: \.self) { row in
                    HStack(spacing: 5) {
                        Spacer() // Align to center
                        ForEach(viewModel.items[row].indices, id: \.self) { column in
                            Button(action: {
                                viewModel.performAction(for: viewModel.items[row][column])
                            }) {
                                HStack(alignment: .center) {
                                    Image(systemName: viewModel.items[row][column].imageName)
                                        .foregroundStyle(.black)
                                        .padding(.leading)
                                    Spacer()
                                    Text(viewModel.items[row][column].text)
                                        .font(.system(size: 12))
                                        .foregroundStyle(.black)
                                        .padding(.trailing)
                                    Spacer()
                                }
                            }
                        }
                        .frame(maxHeight: 44) // Adjust frame as needed
                        .background(Color.gray.brightness(0.1))
                        .cornerRadius(8)
                        Spacer() // Align to center
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
            // Lower Text Section
            ZStack {
                Color.gray.brightness(0.1)
                    .cornerRadius(8)
                HStack {
                    Image(systemName: viewModel.centeredImageName)
                        .padding(.leading)
                    Spacer()
                    Text(viewModel.centeredText)
                        .font(.system(size: 12))
                        .padding(.trailing, 50)
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 43) // Adjust frame as needed
            .padding(.horizontal, 9)
        }
        .frame(maxWidth: .infinity, maxHeight: 286)
//        .border(Color.black, width: 1)
    }
}

struct TableHome_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green
            
            let items: [[TableItem]] = [
                [TableItem(imageName: "tshirt.fill", text: "COSMETIC CYBERWEAR"),
                 TableItem(imageName: "building.2.fill", text: "NIGHTCITY")],
                [TableItem(imageName: "house.fill", text: "CYBER MART"),
                 TableItem(imageName: "bitcoinsign.square.fill", text: "BLACKMARKET")],
                [TableItem(imageName: "house.fill", text: "CYBER MART"),
                 TableItem(imageName: "bitcoinsign.square.fill", text: "BLACKMARKET")],
                [TableItem(imageName: "building.columns.fill", text: "BANK OF X"),
                 TableItem(imageName: "house.lodge.fill", text: "TRADING POST")]
            ]
            
            let viewModel = TableHomeViewModel(title: "Explore Code Mecha", items: items, actionTitle: "Click Me!", centeredImageName: "house.and.flag.fill", centeredText: "CALIBRATION STATION")
            TableHome(viewModel: viewModel)
        }
    }
}





