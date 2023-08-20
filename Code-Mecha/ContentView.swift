//
//  ContentView.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/19/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        Text("Code Mecha")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
