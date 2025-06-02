//
//  ContentView.swift
//  Music.App
//
//  Created by Benjamin Rojo on 30/05/25.
//

import SwiftUI

struct ContentView: View {
    let musica = [
        album(numero: "1",nombre: "...Ready For It!"),
        album(numero: "2",nombre: "End Game (feat.Ed Sheeran & Future)"),
        album(numero: "3",nombre: "I Did Something Bad"),
        album(numero: "4",nombre: "Don´t Blame Me"),
        album(numero: "5",nombre: "Delicate"),
        album(numero: "6",nombre: "Look What You Made Me Do"),
        album(numero: "7",nombre: "So It Goes..."),
        album(numero: "8",nombre: "Gorgeous"),
        album(numero: "9",nombre: "Getaway Car"),
        album(numero: "10",nombre: "King Of My Heart"),
        album(numero: "11",nombre: "Dancing With Our Hands Tied"),
        album(numero: "12",nombre: "Dress"),
        album(numero: "13",nombre: "This Is Why We Can´t Have Nice Things"),
        album(numero: "14",nombre: "Call It What You Want"),
        album(numero: "15",nombre: "New Year´s Day")
    ]
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                Image("reputation")
                    .resizable() // Permite que la imagen cambie de tamaño
                    .scaledToFit() // Escala la imagen para que se ajuste sin distorsión
                    .frame(width: 250, height: 250)
                Text("reputation")
                    .font(.headline)
                    .foregroundColor(.white)
                Text("Taylor Swift")
                    .font(.headline)
                    .foregroundColor(.red)
                HStack{
                    Text("Country •")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("2017 •")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("Lossless")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                HStack(spacing: 16) {
                    Button(action: {
                        print("playing the album")
                    }) {
                        Label("Play", systemImage: "play.fill")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(red: 28/255, green: 28/255, blue: 30/255))
                            .foregroundColor(.red)
                            .cornerRadius(12)
                    }
                    
                    Button(action: {
                        print("shuffle the album")
                    }) {
                        Label("Shuffle", systemImage: "shuffle")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(red: 28/255, green: 28/255, blue: 30/255))
                            .foregroundColor(.red)
                            .cornerRadius(12)
                    }
                }
                Divider()
                    .frame(height: 1)
                    .background(Color.gray.opacity(0.3))
                    .padding(.top, 8)
                
                List(musica) { pepe in
                    albumCard(album1: pepe)
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                }
                .scrollContentBackground(.hidden)
                
              
            }
        }
      
    }
}

struct album: Identifiable{
    let id = UUID()
    let numero: String
    let nombre : String
}

struct albumCard: View{
    let album1 : album
    var body: some View{
        VStack(spacing: 0) {
                    HStack {
                        Text(album1.numero)
                            .foregroundColor(.gray)
                        Text(album1.nombre)
                            .font(.headline)
                        Spacer()
                        Image(systemName: "arrow.down.circle.fill")
                            .foregroundColor(.gray)
                        Image(systemName: "ellipsis")
                    }
                    .padding(.vertical, 9.093)
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.gray.opacity(0.3))
                        .padding(.leading, 35)
                }
                .foregroundColor(.white)
    }
}

//Falta aqui editar el menu, esta mal este menu, corregirlo y asi

struct Menu: View {
    var body: some View {
        TabView {
            ZStack {
                Color.black.ignoresSafeArea()
            }
            .tabItem {
                Image(systemName: "play.circle.fill")
                Text("Listen Now")
            }

            ZStack {
                Color.black.ignoresSafeArea()
            }
            .tabItem {
                Image(systemName: "square.grid.2x2.fill")
                Text("Browse")
            }

            ZStack {
                Color.black.ignoresSafeArea()
            }
            .tabItem {
                Image(systemName: "dot.radiowaves.left.and.right")
                Text("Radio")
            }

            ZStack {
                Color.black.ignoresSafeArea()
            }
            .tabItem {
                Image(systemName: "music.note.list")
                Text("Library")
            }

            ZStack {
                Color.black.ignoresSafeArea()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
        }
        .accentColor(.red)
    }
}
#Preview {
    ContentView()
}
