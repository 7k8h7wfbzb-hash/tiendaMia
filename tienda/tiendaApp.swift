//
//  tiendaApp.swift
//  tienda
//
//  Created by Kleber Oswaldo Muy landi on 14/2/26.
//

import SwiftUI
import SwiftData

@main
struct tiendaApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            PersonaModelo.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            PantallaInicio()
        }
        .modelContainer(sharedModelContainer)
    }
}
