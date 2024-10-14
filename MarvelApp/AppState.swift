//
//  AppState.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 13.10.2024.
//

import Foundation
import FirebaseAuth

class AppState: ObservableObject {
    @Published var isUserLoggedIn: Bool = false
//    Auth.auth().currentUser != nil
}
