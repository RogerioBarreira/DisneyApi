//
//  Disney.swift
//  Disney
//
//  Created by Rogerio Martins on 26/03/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let disney = try? JSONDecoder().decode(Disney.self, from: jsonData)

import Foundation

// MARK: - Disney
struct Disney: Codable {

    let data: [Datum]?
    let count, totalPages: Int?
    let nextPage: String?
}

// MARK: - Datum
struct Datum: Codable {
    let films, shortFilms, tvShows, videoGames: [String]?
    let parkAttractions: [String]?
    let allies, enemies: [String]?
    let id: Int?
    let name: String?
    let imageURL: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case films, shortFilms, tvShows, videoGames, parkAttractions, allies, enemies
        case id = "_id"
        case name
        case imageURL = "imageUrl"
        case url
    }
}
