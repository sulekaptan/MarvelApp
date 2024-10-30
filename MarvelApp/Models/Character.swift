//
//  CharacterModel.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 18.10.2024.
//
import Foundation

struct MarvelResponse: Codable {
    let data: CharacterData
}

struct CharacterData: Codable, Hashable {
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
    let results: [Character]
}

struct Character: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: Thumbnail
    let comics: ComicData
}

struct Thumbnail: Codable, Hashable {
    let path: String
       let xtension: String
       var fullPath: String {
           if path.starts(with: "http") {
               if path.starts(with: "http://") {
                   let securePath = path.replacingOccurrences(of: "http://", with: "https://")
                   return "\(securePath).\(xtension)"
               } else {
                   return "\(path).\(xtension)"
               }
           } else {
               return "https://\(path).\(xtension)"
           }
       }
    enum CodingKeys: String, CodingKey {
        case xtension = "extension"
        case path
    }
}

struct ComicData: Codable, Hashable {
    let available: Int
    let items: [ComicItem]
}

struct ComicItem: Codable, Hashable {
    let resourceURI: String
    let name: String
}

/*import Foundation

//struct MarvelResponse: Codable {
//    let code: String
//    let status: String
//    let data: MarvelData
//}
//
//struct MarvelData: Codable {
//    let offset: Int
//    let limit: Int
//    let total: Int
//    let count: Int
//    let results: [Character]
//}
//
struct MarvelResponse: Codable {
    let data: CharacterData
}

struct CharacterData: Codable, Hashable {
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
    let results: [Character]
}


struct Character: Hashable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: Thumbnail
    let comics: ComicData
//    let series: SeriesData
//    let stories: StoryData
//    let events: EventData
//    let urls: [URLInfo]
}

struct Thumbnail: Codable, Hashable {
    let path: String
    let xtension: String

    var fullPath: String {
        return "https://\(path).\(xtension)"
    }

    enum CodingKeys: String, CodingKey {
        case xtension = "extension"
        case path
    }
}

struct ComicData: Codable, Hashable {
    let available: Int
    let items: [ComicItem]
}

struct ComicItem: Codable, Hashable {
    let resourceURI: String
    let name: String
}


//struct SeriesData: Codable {
//    let available: Int
//    let items: [SeriesItem]
//}
//
//struct SeriesItem: Codable {
//    let resourceURI: String
//    let name: String
//}
//
//struct StoryData: Codable {
//    let available: Int
//    let items: [StoryItem]
//}
//
//struct StoryItem: Codable {
//    let resourceURI: String
//    let name: String
//    let type: String
//}
//
//struct EventData: Codable {
//    let available: Int
//    let items: [EventItem]
//}
//
//struct EventItem: Codable {
//    let resourceURI: String
//    let name: String
//}
//
//struct URLInfo: Codable {
//    let type: String
//    let url: String
//}
*/
