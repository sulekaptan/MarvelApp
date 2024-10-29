//
//  CharacterViewModel.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 18.10.2024.
//

import Foundation
import Combine

class CharacterViewModel: ObservableObject {
    @Published var characters: [Character] = []
    private var isLoading = false
    private var offset = 0
    private let limit = 54

    func getCharacters() {
        guard !isLoading else { return }
        isLoading = true
        
        NetworkManager.shared.getCharacters(offset: offset, limit: limit) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let newCharacters):
                    self?.characters.append(contentsOf: newCharacters) 
                    self?.offset += self?.limit ?? 20
                case .failure(let error):
                    print("Karakterler alınırken hata oluştu: \(error)")
                }
                self?.isLoading = false
            }
        }
    }
}
