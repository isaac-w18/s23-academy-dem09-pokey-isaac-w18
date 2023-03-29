//
//  PokedexService.swift
//  API-Test
//
//  Created by AlecNipp on 10/25/22.
//

import Foundation

/// A static service class that holds the `Pokedex` data stuct used for this app.
class PokedexService {
    
    init() {
        loadPokedex()
    }
    
    /// The shared `PokedexService` instance for the entire app. It is `nil` when the app first launches. The method `loadPokedex()` must be called to read the JSON in and set this variable equal to the decoded JSON object.
    static var shared: PokedexService {
        PokedexService()
    }
    
    /// The `Pokedex` for this PokedexService. It will be `nil` if the JSON loading fails.
    var pokedex: Pokedex?
    
    /// A function that loads the Pokedex data
    func loadPokedex() {
        pokedex = getPokedexFromJSON()
    }
    
    /// The function that actually reads the JSON Pokedex object. It returns an optional type `Pokedex?` because there is a chance the data could be corrupted, decoding could fail, etc.
    func getPokedexFromJSON() -> Pokedex? {
        // MARK: Change this function to load the JSON from the Bundle
        
        // step 1: generate url
        guard let url = Bundle.main.url(forResource: "pokedex-data", withExtension: ".json") else {
            print("Bad URL")
            return nil
        }
        
        // step 2: fetch raw data using url
        // try? takes any "throws" error and turns it into a nil
        guard let data = try? Data(contentsOf: url) else {
            print("Bad data")
            return nil
        }
        
        // step 3: you have data at this point, JSONDecoder().decode( /*codable type that you want json to fit into*/, data)
        let decoder = JSONDecoder()
        let decoded = try? decoder.decode(Pokedex.self, from: data)
        
        return decoded
        
        
        
    }
    
    /// A method that searches the Pokdex for the `Pokemon` with the matching `num: String` propery
    /// Uses the .first(where: ()) method.
    func getPokemonFromNum(num: String) -> Pokemon {
        // MARK: Change this logic to find the Pokemon with the same num value
        return (PokedexService.shared.pokedex?.pokemon.first(where: {$0.num == num}))!
    }
    
}
