//
//  CharactersView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 11.10.2024.
//

import SwiftUI
//import Kingfisher

struct CharactersView: View {
    
    @StateObject private var characterViewModel = CharacterViewModel()
    
    @State private var searchText = ""
    
    @StateObject private var favoritesManager = FavoritesManager()
    
    let columns = [GridItem(.adaptive(minimum:90), spacing: 5)]

    var filteredCharacters: [Character] {
            if searchText.isEmpty {
                return characterViewModel.characters
            } else {
                return characterViewModel.characters.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
            }
        }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(named: "bgColor")!)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(filteredCharacters, id: \.self) { character in
                                NavigationLink(destination: CharacterDetailView(
                                                                    characterName: character.name,
                                                                    characterDescription: character.description,
                                                                    characterImage: character.thumbnail.fullPath,
                                                                    characterMovies: character.comics.items.map { $0.name }
                                                                )
                                                                .environmentObject(favoritesManager)) // Favori yöneticisini sağlıyoruz
                                                                {
                                                                    MainCard(
                                                                        imageUrl: character.thumbnail.fullPath,
                                                                        title: character.name,
                                                                        imageWidth: 90,
                                                                        imageHeight: 90,
                                                                        cardWidth: 110,
                                                                        cardHeight: 150,
                                                                        textSize: 13
                                                                    )
                                                                }
                            .onAppear {
                                    if character == characterViewModel.characters.last {
                                        characterViewModel.getCharacters()
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .onAppear {
                characterViewModel.getCharacters() // Bu metot API'den karakterleri yüklemeli
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Character List")
                            .font(.custom("Copperplate", fixedSize: 25))
                            .bold()
                            .foregroundColor(.white)
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Search characters")
        }
    }
}
struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
