// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let pokemon = try? newJSONDecoder().decode(Pokemon.self, from: jsonData)

import Foundation

// MARK: - Pokemon
struct Pokemon: Codable {
    let id: Int
    let num, name: String
    let img: String
    let type: [TypeElement]
    let height, weight, candy: String
    let candyCount: Int?
    let egg: Egg
    let spawnChance, avgSpawns: Double
    let spawnTime: String
    let multipliers: [Double]?
    let weaknesses: [TypeElement]
    let nextEvolution, prevEvolution: [Evolution]?
    
    
    /// The `CodingKeys` enum helps translate the JSON property names to our Swift variable names. For example, the property called "candy_count"_ in the JSON data is called `candyCount` in our struct.
    enum CodingKeys: String, CodingKey {
        case id, num, name, img, type, height, weight, candy
        case candyCount = "candy_count"
        case egg
        case spawnChance = "spawn_chance"
        case avgSpawns = "avg_spawns"
        case spawnTime = "spawn_time"
        case multipliers, weaknesses
        case nextEvolution = "next_evolution"
        case prevEvolution = "prev_evolution"
    }
    
    /// This is  a computed property that changes the HTTP URLs to HTTPS. Nothing really fancy here: it literally just replaces HTTP with HTTPS in the URL string.
    var imageURL: URL? {
        let http = img
        let https = "https" + http.dropFirst(4)
        return URL(string: https)
    }
}

extension Pokemon {
    static var example: Pokemon {
        Pokemon(id: 1, num: "001", name: "Bulbasaur", img: "http://www.serebii.net/pokemongo/pokemon/001.png", type: [
            TypeElement(rawValue: "Grass")!,
            TypeElement(rawValue: "Poison")!
        ], height: "0.71 m", weight: "6.9 kg", candy: "Bulbasaur Candy", candyCount: 25, egg: Egg(rawValue: "2 km")!, spawnChance: 0.69, avgSpawns: 69, spawnTime: "20.00", multipliers: [1.58], weaknesses: [
            TypeElement(rawValue:"Fire")!,
            TypeElement(rawValue:"Ice")!,
            TypeElement(rawValue:"Flying")!,
            TypeElement(rawValue: "Psychic")!
          ], nextEvolution: [
          Evolution(num: "002", name: "Ivysaur"),
          Evolution(num: "003", name: "Venusaur")
          ], prevEvolution: nil)
    }
}
