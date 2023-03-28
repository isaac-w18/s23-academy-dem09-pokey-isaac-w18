//
//  PokemonViewModel.swift
//  Pokey
//
//  Created by AlecNipp on 11/16/22.
//

import Foundation

/// The ViewModel for a PokemonDetailView. It has one Published property, which is the model of the Pokemon currently in the view.
class PokemonDetailViewModel: ObservableObject {
    /// Tracks the Pokemon in the view currently. Note that this property can be changed.
    @Published var model: Pokemon
    
    /// The initializer for this ViewModel accepts a `Pokemon` as the model.
    init(pokemon: Pokemon) {
        self.model = pokemon
    }
    
    var name: String {
        return model.name
    }
    // MARK: Change this disgusting metric.
    var height: String {
        return model.height
    }
    // MARK: Change this disgusting metric.
    var weight: String {
        return model.weight
    }
    
    var id: Int {
        return model.id
    }
    
    var egg: String {
        return model.egg.rawValue
    }
    
    var number: String {
        return "#" + model.num
    }
        
    var imageURL: URL? {
        return model.imageURL
    }
    
    var weaknesses: [TypeElement] {
        return model.weaknesses
    }
    // MARK: Computed property getting a list of the Pokemon's next evolutions.
    var nextEvolutions: [Pokemon]? {
        return nil
        
    }
    // MARK: Computed property getting a list of the Pokemon's previous evolutions.
    var prevEvolutions: [Pokemon]? {
        return nil
    }
    // MARK: Returns the list of Pokemon in this Pokemon's evolution series. This will be a list of previous evolutions + current form + next evolutions
    var evolutionSeries: [Pokemon] {
        return []
    }
}
