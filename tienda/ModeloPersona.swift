//
//  ModeloPersona.swift
//  tienda
//
//  Created by Kleber Oswaldo Muy landi on 14/2/26.
//

import Foundation
import SwiftData
@Model
final class PersonaModelo{
     var id: UUID
     var cedula: String
     var nombre: String
     var apellido: String
     var fechNacimiento: Date
     var direccion: String
     var telefono: String
     var correo: String
     var estado: Bool
     var user: String
     var password: String
     var imagen: Data?
    
    init(id: UUID=UUID(), cedula: String, nombre: String, apellido: String, fechNacimiento: Date, direccion: String, telefono: String, correo: String, estado: Bool, user: String, password: String, imagen: Data? = nil) {
        self.id = id
        self.cedula = cedula
        self.nombre = nombre
        self.apellido = apellido
        self.fechNacimiento = fechNacimiento
        self.direccion = direccion
        self.telefono = telefono
        self.correo = correo
        self.estado = estado
        self.user = user
        self.password = password
        self.imagen = imagen
    }
    
}
