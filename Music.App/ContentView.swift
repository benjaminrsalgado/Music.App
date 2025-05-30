//
//  ContentView.swift
//  Music.App
//
//  Created by Benjamin Rojo on 30/05/25.
//

import SwiftUI

struct ContentView: View {
    let canciones = [
        Music(titulo: "Shape of You", artista: "Ed Sheeran", icono: "music.note"),
        Music(titulo: "Blinding Lights", artista: "The Weeknd", icono: "headphones"),
        Music(titulo: "Levitating", artista: "Dua Lipa", icono: "guitars"),
        Music(titulo: "Uptown Funk", artista: "Bruno Mars", icono: "music.mic"),
        Music(titulo: "As It Was", artista: "Harry Styles", icono: "music.quarternote.3"),
        Music(titulo: "Shape of You", artista: "Ed Sheeran", icono: "music.note"),
        Music(titulo: "Blinding Lights", artista: "The Weeknd", icono: "headphones"),
        Music(titulo: "Levitating", artista: "Dua Lipa", icono: "guitars"),
        Music(titulo: "Uptown Funk", artista: "Bruno Mars", icono: "music.mic"),
        Music(titulo: "As It Was", artista: "Harry Styles", icono: "music.quarternote.3"),
        Music(titulo: "Shape of You", artista: "Ed Sheeran", icono: "music.note"),
        Music(titulo: "Blinding Lights", artista: "The Weeknd", icono: "headphones"),
        Music(titulo: "Levitating", artista: "Dua Lipa", icono: "guitars"),
        Music(titulo: "Uptown Funk", artista: "Bruno Mars", icono: "music.mic"),
        Music(titulo: "As It Was", artista: "Harry Styles", icono: "music.quarternote.3")
    ]
    var body: some View {
        ZStack {
      LinearGradient(
        gradient: Gradient(colors: [.purple, .pink]),
        startPoint: .top,
        endPoint: .bottom
      )
      .ignoresSafeArea()
            
            VStack (alignment: .center){
                Text("The best Music in the World 🌎")
                    .font(.largeTitle)
                ScrollView{
                    VStack{
                        ForEach (canciones){ pepe in
                            MusicCard (musica: pepe)
                        }
                    }
                }
            }
        }
    }
}
struct Music: Identifiable{
    let id = UUID()
    let titulo: String
    let artista: String
    let icono: String
}

struct MusicCard: View{
    let musica : Music
    var body: some View{
        HStack{
            Image(systemName: musica.icono)
            VStack{
                Text(musica.titulo)
                    .font(.headline)
                Text(musica.artista)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .background(.blue.opacity(0.2))
        .cornerRadius(33)
        .shadow(radius: 4)
        .padding()
    }
}

#Preview {
    ContentView()
}
