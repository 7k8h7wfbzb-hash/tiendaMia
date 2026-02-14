//
//  PantallaInicio.swift
//  tienda
//
//  Created by Kleber Oswaldo Muy landi on 14/2/26.
//

import SwiftUI

struct PantallaInicio: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Fondo con degradado suave
                LinearGradient(colors: [Color.blue.opacity(0.15), Color.green.opacity(0.15)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                // Elementos decorativos de fondo
                Circle()
                    .fill(Color.blue.opacity(0.12))
                    .blur(radius: 60)
                    .frame(width: 240, height: 240)
                    .offset(x: -140, y: -260)
                
                Circle()
                    .fill(Color.green.opacity(0.12))
                    .blur(radius: 60)
                    .frame(width: 280, height: 280)
                    .offset(x: 120, y: 220)
                
                VStack(spacing: 24) {
                    // Marca / Logo
                    ZStack {
                        RoundedRectangle(cornerRadius: 24, style: .continuous)
                            .fill(.ultraThinMaterial)
                            .overlay(
                                RoundedRectangle(cornerRadius: 24, style: .continuous)
                                    .stroke(LinearGradient(colors: [Color.white.opacity(0.7), Color.white.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 1)
                            )
                            .shadow(color: .black.opacity(0.08), radius: 20, x: 0, y: 10)
                        Text("🛒")
                            .font(.system(size: 56))
                            .accessibilityLabel("Carrito de compras")
                    }
                    .frame(width: 110, height: 110)
                    
                    // Título y subtítulo
                    VStack(spacing: 8) {
                        Text("SuperMarket")
                            .font(.system(.largeTitle, weight: .bold))
                            .foregroundStyle(LinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing))
                            .shadow(color: .black.opacity(0.1), radius: 6, x: 0, y: 3)
                        
                        Text("Todo lo que necesitas, fresco y al mejor precio")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 24)
                    }
                    
                    // Botones de acción
                    VStack(spacing: 12) {
                        NavigationLink {
                            // Acción principal: ir a comprar / explorar
                            VistaLogin()
                        } label: {
                            HStack {
                                Image(systemName: "cart.fill")
                                Text("Empezar a comprar")
                                    .fontWeight(.semibold)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        .controlSize(.large)
                        .padding(.horizontal, 24)
                        
                        Button {
                            // Acción secundaria: ver ofertas
                        } label: {
                            HStack(spacing: 6) {
                                Image(systemName: "tag.fill")
                                Text("Ver ofertas de hoy")
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        .tint(.blue)
                        .controlSize(.large)
                        .padding(.horizontal, 24)
                    }
                    .padding(.top, 8)
                    
                    // Píldoras de confianza / beneficios
                    HStack(spacing: 10) {
                        Label("Entrega rápida", systemImage: "bolt.fill")
                        Divider()
                        Label("Fresco", systemImage: "leaf.fill")
                        Divider()
                        Label("Seguro", systemImage: "shield.checkerboard")
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 16)
                }
                .padding(.vertical, 40)
            }
        }
    }
}

#Preview {
    PantallaInicio()
}
