//
//  AppState.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 13.10.2024.
//

import Foundation
import FirebaseAuth
import SwiftUI

class AppState: ObservableObject {
    @Published var isUserLoggedIn: Bool = true
//    Auth.auth().currentUser != nil
}
