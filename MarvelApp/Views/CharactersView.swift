//
//  CharactersView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 11.10.2024.
//

import SwiftUI

struct CharactersView: View {
    
    @State private var searchText = ""
    
    let columns = [GridItem(.adaptive(minimum:90), spacing: 5)]
    
    let characters = ["Iron Man", "Captain America", "Thor", "Black Widow", "Hulk", "Hawkeye", "Spider-Man", "Doctor Strange", "Scarlet Witch", "Black Panther", "Ant-Man", "Vision"]
        
        var filteredCharacters: [String] {
            if searchText.isEmpty {
                return characters
            } else {
                return characters.filter { $0.localizedCaseInsensitiveContains(searchText) }
            }
        }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(named: "bgColor")!)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        LazyVGrid(columns: columns, spacing: 20) {                            ForEach(filteredCharacters, id: \.self) { character in
                            NavigationLink(destination: CharacterDetailView(characterName: "Iron Man",
                                                                            characterDescription: "Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.",
                                                                            characterImage: "char",
                                                                            characterMovies: ["Iron Man (2008)", "The Avengers (2012)", "Iron Man 3 (2013)"],
                                                                            characterPowers: ["Genius-level intellect", "Powered armor suit", "Expert engineer and combatant"],
                                                                            characterOrigin: "Long Island, New York")) {
                                MainCard(imageName: "char", title: character, imageWidth:90, imageHeight: 90, cardWidth: 110, cardHeight: 150, textSize: 13)
                            }
                            }
                        }
                        .padding()
                    }
                }
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
