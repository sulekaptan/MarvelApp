//
//  CharacterDetailView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 12.10.2024.
//

import SwiftUI

struct CharacterDetailView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    let characterName: String
    let characterDescription: String
    let characterImage: String
    let characterMovies: [String]
    
    init(characterName: String, characterDescription: String, characterImage: String, characterMovies: [String]) {
        self.characterName = characterName
        self.characterDescription = characterDescription
        self.characterImage = characterImage
        self.characterMovies = characterMovies
        _isFavorite = State(initialValue: false)
    }
    
    @State private var isFavorite: Bool
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(named: "bgColor")!)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        AsyncImage(url: URL(string: characterImage)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                        } placeholder: {
                            ProgressView()
                        }
                        
                        Text(characterName)
                            .font(.custom("Copperplate", fixedSize: 30))
                            .bold()
                            .foregroundColor(.white)
                        
                        Text(characterDescription)
                            .font(.custom("Copperplate", fixedSize: 18))
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                        
                        
                        VStack(alignment: .leading) {
                            Text("COMICS")
                                .font(.custom("Copperplate", fixedSize: 22))
                                .foregroundColor(.white)
                                .padding(.top, 20)
                                                
                            List(characterMovies, id: \.self) { movie in
                                HStack {
                                    Text(movie)
                                        .font(.custom("Copperplate", fixedSize: 18))
                                        .foregroundColor(.black)
                                }
                                .listRowBackground(Color.clear)
                            }
                            .listStyle(.plain)
//                            .background(Color.yellow)
                            .frame(height: CGFloat(characterMovies.count * 80))
                        }
//                        .background(.pink)
                        .padding(.horizontal, 10)
                                            
                        Spacer()
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Character Detail")
                            .font(.custom("Copperplate", fixedSize: 22))
                            .bold()
                            .foregroundColor(.white)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isFavorite.toggle()
                    }) {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(isFavorite ? .black : .white)
                    }
                }
            }
        }
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(
            characterName: "Iron Man",
            characterDescription: "Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.",
            characterImage: "char",
            characterMovies: ["Iron Man (2008)", "The Avengers (2012)", "Iron Man 3 (2013)"]
        )
        .environmentObject(FavoritesManager())
    }
}
