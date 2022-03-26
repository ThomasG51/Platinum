//
//  PlatinumApp.swift
//  Platinum
//
//  Created by Thomas George on 26/03/2022.
//

import SwiftUI

@main
struct PlatinumApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
