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
    
    let columns = [GridItem(.adaptive(minimum:90), spacing: 5)]
    
//    let characters = ["Iron Man", "Captain America", "Thor", "Black Widow", "Hulk", "Hawkeye", "Spider-Man", "Doctor Strange", "Scarlet Witch", "Black Panther", "Ant-Man", "Vision"]
//
//        var filteredCharacters: [String] {
//            if searchText.isEmpty {
//                return characters
//            } else {
//                return characters.filter { $0.localizedCaseInsensitiveContains(searchText) }
//            }
//        }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(named: "bgColor")!)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(characterViewModel.characters, id: \.self) { character in
                                NavigationLink(destination: CharacterDetailView(characterName: character.name,
                                                                                characterDescription: character.description,
                                                                                characterImage: "\(character.thumbnail.fullPath)",
                                                                                characterMovies: character.comics.items.map { $0.name },
                                                                            characterPowers: ["Genius-level intellect", "Powered armor suit", "Expert engineer and combatant"],
                                                                            characterOrigin: "Long Island, New York")) {
                                MainCard(imageName: character.thumbnail.fullPath, title: character.name, imageWidth:90, imageHeight: 90, cardWidth: 110, cardHeight: 150, textSize: 13)
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
