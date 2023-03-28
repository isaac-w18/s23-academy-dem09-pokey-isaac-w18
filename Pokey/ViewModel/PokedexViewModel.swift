//
//  PokedexViewModel.swift
//  Pokey
//
//  Created by AlecNipp on 11/16/22.
//

import Foundation

class PokedexViewModel: ObservableObject {
    @Published var pokedex: Pokedex?
    
    
    init() {
        pokedex = PokedexService.shared.pokedex
    }
    
    var pokemon: [Pokemon] {
        return pokedex?.pokemon ?? []
    }
    
    
    
    
}
