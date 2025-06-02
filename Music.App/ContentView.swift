//
//  ContentView.swift
//  Music.App
//
//  Created by Benjamin Rojo on 30/05/25.
//

import SwiftUI

struct ContentView: View {
    let apps = [
        AppItem(nombre: "Notas", categoria: "Productividad", icono: "note.text"),
        AppItem(nombre: "Música", categoria: "Entretenimiento", icono: "music.note"),
        AppItem(nombre: "Salud", categoria: "Bienestar", icono: "heart.fill"),
        AppItem(nombre: "Fotos", categoria: "Creatividad", icono: "photo")
    ]
    var body: some View{
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.gray, .red]),
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            VStack{
                Text("Catalogo de apps fav 🎸")
                    .font(.title)
                ScrollView{
                    VStack{
                        ForEach(apps){ pepe in
                            CardView(app: pepe)
                        }
                    }
                }
            }
        }
    }
}

struct AppItem: Identifiable {
    let id = UUID()
    let nombre: String
    let categoria: String
    let icono: String
}

struct CardView: View{
    let app : AppItem
    var body: some View{
        HStack(spacing: 16) {
            Image(systemName: app.icono)
                .font(.system(size: 30))
                .frame(width: 50, height: 50)
                .background(Color.white.opacity(0.2))
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(app.nombre)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))

                Text(app.categoria)
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.7))
            }

            Spacer()

            Button("Abrir") {
                print("Abriendo \(app.nombre)")
            }
            .buttonStyle(.borderedProminent)
            .tint(.white)
            .foregroundColor(.black)
        }
        
    }
}
#Preview {
    ContentView()
}
