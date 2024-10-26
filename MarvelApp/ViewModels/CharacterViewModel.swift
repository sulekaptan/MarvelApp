//
//  CharacterViewModel.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 18.10.2024.
//

import Foundation
import Combine

class CharacterViewModel: ObservableObject {
//    @Published var characters: [Character] = [
//            Character(id: 1, name: "Iron Man", description: "", thumbnail: Thumbnail(path: "", xtension: ""), comics: ComicData(available: 0, items: [])),
//            Character(id: 2, name: "Captain America", description: "", thumbnail: Thumbnail(path: "", xtension: ""), comics: ComicData(available: 0, items: []))
//            // Diğer karakterler...
//        ]
    @Published var characters: [Character] = []
    
    func getCharacters() {
           NetworkManager.shared.getCharacters {result in
               DispatchQueue.main.async {
                   switch result {
                       case .success(let characters):
                           self.characters = characters
                       case .failure(let error):
                           print("Error fetching characters: \(error)")
                   }
               }
               
           }
       }
}
