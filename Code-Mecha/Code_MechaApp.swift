//
//  Code_MechaApp.swift
//  Code-Mecha
//
//  Created by Tye Garcia on 8/19/23.
//

import SwiftUI

@main
struct Code_MechaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
