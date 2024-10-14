//
//  SignupViewModel.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 13.10.2024.
//

import Foundation
import Firebase
import FirebaseAuth

class SignupViewModel {
    private let auth = Auth.auth()
    
    func signUp(email: String, password: String, completion: @escaping ((Result<User,Error>) -> ())) {
        auth.createUser(withEmail: email, password: password) {result, error in
            if let error = error {
                completion(.failure(error))
            } else if let user = result?.user {
                completion(.success(user))
            }
        }
    }
}
