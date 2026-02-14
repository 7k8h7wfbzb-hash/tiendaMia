//
//  VistaLogin.swift
//  tienda
//
//  Created by Kleber Oswaldo Muy landi on 14/2/26.
//

import SwiftUI

struct VistaLogin: View {
    var body: some View {
        Text("Inicio de Session").font(.largeTitle)
            .foregroundStyle(LinearGradient(colors: [Color.red, Color.blue], startPoint: .bottomLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    VistaLogin()
}
