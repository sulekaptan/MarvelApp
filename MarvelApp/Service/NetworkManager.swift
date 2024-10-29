//
//  NetworkManager.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 22.10.2024.
//

import Foundation
import CommonCrypto

class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "https://gateway.marvel.com:443/v1/public"
    
    private var ts: String {
          let time = Int(Date().timeIntervalSince1970)
          return String(time)
      }
      
      private var hash: String {
          return MD5(ts + API.privateKey + API.publicKey) //06BF144298942753410E5916A57FF501
      }
      
//      private var urlString: String {
//          return "\(baseURL)/characters?apikey=\(API.publicKey)&ts=\(ts)&hash=\(hash)"
//      }
    
    func getCharacters(offset: Int, limit: Int, completion: @escaping (Result<[Character], MarvelError>) -> ()) {
        let urlString = "\(baseURL)/characters?offset=\(offset)&limit=\(limit)&apikey=\(API.publicKey)&ts=\(ts)&hash=\(hash)"
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.badUrl))
            print("1.hata")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                completion(.failure(.noData))
                print("2.hata")
                return
            }
            
            guard let data = data else {
                print("3.hata")
                completion(.failure(.noData))
                return
            }
            
            if let jsonString = String(data: data, encoding: .utf8) {
                print("Received JSON: \(jsonString)")
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                print("Response: \(response)")
                print("Status Code: \(httpResponse.statusCode)")
            }
            
            do {
                let response = try JSONDecoder().decode(MarvelResponse.self, from: data)
                completion(.success(response.data.results))
            } catch {
                print("Decoding error: \(error)")
                completion(.failure(.dataParseError))
                print("4.hata")
            }
        }.resume()
    }
    
    private func MD5(_ string: String) -> String {
            let length = Int(CC_MD5_DIGEST_LENGTH)
            let messageData = string.data(using:.utf8)!
            var digestData = Data(count: length)
            
            _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in
                messageData.withUnsafeBytes { messageBytes -> UInt8 in
                    if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress {
                        let messageLength = CC_LONG(messageData.count)
                        CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
                    }
                    return 0
                }
            }
            return digestData.map { String(format: "%02hhx", $0) }.joined()
        }
}

enum MarvelError: Error {
    case badUrl
    case noData
    case dataParseError
}
