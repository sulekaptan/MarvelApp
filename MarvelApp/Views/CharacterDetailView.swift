//
//  CharacterDetailView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 12.10.2024.
//

import SwiftUI

struct CharacterDetailView: View {
    let characterName: String
    let characterDescription: String
    let characterImage: String
    let characterMovies: [String]
    let characterPowers: [String]
    let characterOrigin: String
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(named: "bgColor")!)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        Image("char")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        
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
                            Text("Origin")
                                .font(.custom("Copperplate", fixedSize: 22))
                                .foregroundColor(.white)
                                .padding(.top, 20)
                            
                            Text(characterOrigin)
                                .font(.custom("Copperplate", fixedSize: 18))
                                .foregroundColor(.black)
                                .padding(.top, 5)
                        }
                        .padding(.horizontal, 20)
                        
                        VStack(alignment: .leading) {
                            Text("Powers")
                                .font(.custom("Copperplate", fixedSize: 22))
                                .foregroundColor(.white)
                                .padding(.top, 20)
                            
                            ForEach(characterPowers, id: \.self) { power in
                                Text("• \(power)")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(.horizontal, 20)
                        
                        VStack(alignment: .leading) {
                            Text("COMICS")
                                .font(.custom("Copperplate", fixedSize: 22))
                                .foregroundColor(.white)
                                .padding(.top, 20)
                                                
                            List(characterMovies, id: \.self) { movie in
                                NavigationLink(destination: ComicsDetailView(comicsName: "IRON MAN", comicsDescription: "Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.", comicsImage: "char")) {
                                        HStack {
                                            Image("char")
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .cornerRadius(8)
                                                                                            
                                            Text(movie)
                                                .font(.custom("Copperplate", fixedSize: 18))
                                                .foregroundColor(.black)
                                        }
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
            }
//            .navigationTitle("Character Detail")
        }
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(
            characterName: "Iron Man",
            characterDescription: "Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.",
            characterImage: "char",
            characterMovies: ["Iron Man (2008)", "The Avengers (2012)", "Iron Man 3 (2013)"],
            characterPowers: ["Genius-level intellect", "Powered armor suit", "Expert engineer and combatant"],
            characterOrigin: "Long Island, New York"
        )
    }
}
