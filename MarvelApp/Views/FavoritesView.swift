//
//  FavoritesView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct FavoritesView: View {

    @State private var favoriteCharacters: [CharacterFav] = [
        CharacterFav(name: "A-Bomb (Has)", image: "bomb"),
        CharacterFav(name: "A.I.M.", image: "aim")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(named: "bgColor")!)
                    .ignoresSafeArea()
                
                VStack {
                    if favoriteCharacters.isEmpty {
                        Spacer()
                        
                        Text("No favorites added yet!")
                            .font(.custom("Copperplate", fixedSize: 20))
                            .foregroundColor(.white)
                            .padding()
                        
                        Spacer()
                    } else {
                        List {
                            ForEach(favoriteCharacters, id: \.id) { character in
                                HStack {
                                    Image(character.image)
                                        .resizable()
                                        .frame(width: 60, height: 70)
                                        .cornerRadius(10)
                                    
                                    Text(character.name)
                                        .font(.custom("Copperplate", fixedSize: 20))
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                }
                                .listRowBackground(Color.clear)
                                .swipeActions(allowsFullSwipe: false) {
                                    Button {
                                        print("\(character.name) deleted")
                                    } label: {
                                        Label("Delete", systemImage: "trash.fill")
                                    }
                                    .tint(Color("bgColor"))
                                }
                            }
                        }
                        .listStyle(PlainListStyle())
                        .background(Color.clear)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("YOUR FAVORITES")
                            .font(.custom("Copperplate", fixedSize: 22))
                            .bold()
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct CharacterFav: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
