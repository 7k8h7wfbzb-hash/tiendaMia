//
//  Tienda.swift
//  tienda
//
//  Created by Kleber Oswaldo Muy landi on 17/2/26.
//
import SwiftData

import SwiftUI
@main
struct Tienda: App {
    var modelCompartido = {
        let esquemas = Schema([PersonaModelo.self])
        let configuracion = ModelConfiguration(schema: esquemas, isStoredInMemoryOnly: false)
        do {
            return try ModelContainer(for: esquemas, configurations: [configuracion])
        } catch {
            fatalError("Error al crear el ModelContainer: \(error)")
        }
    }()
    var body: some Scene {
        WindowGroup{
           
        }.modelContainer(modelCompartido)
    }
}
