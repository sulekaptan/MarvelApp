//
//  LoginViewModel.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 12.10.2024.
//

import Foundation
import Firebase
import FirebaseAuth

class LoginViewModel {
    private let auth = Auth.auth()
    
    func login(email: String, password: String, completion: @escaping (Result<User, Error>) -> ()) {
        auth.signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(.failure(error))
            } else if let user = result?.user {
                completion(.success(user))
            }
        }
    }
    
    func resetPassword(email: String, completion: @escaping ((Error?)) -> ()) {
        auth.sendPasswordReset(withEmail: email) { error in
            completion(error)
        }
    }
    
}
