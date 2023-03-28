//
//  PokemonDetailView.swift
//  Pokey
//
//  Created by AlecNipp on 11/16/22.
//

import SwiftUI

/// A detailed view of a `Pokemon` that displays an image and some other information
struct PokemonDetailView: View {
    @StateObject var vm: PokemonDetailViewModel
    var body: some View {
            ZStack {
                BackgroundColor()
                VStack {
                    title
                    HStack {
                        pokemonImage
                            .padding()
                        summary
                            .pokeyFont(size: 12, dynamicSize: .body)
                            .padding(.bottom)
                            .padding(.horizontal)
                    }
                    .padding(.top)
                    
                    evolutions
                        .padding()
                    
                }
                
            }
        
    }

    /// The name of the pokemon and its number
    var title: some View {
        HStack {
            Text(vm.name)
            Text(vm.number)
        }
        .pokeyFont(size: 20, dynamicSize: .largeTitle)
    }
    
    /// The image of the Pokemon, retrieved from a web URL using `AsyncImage`
    var pokemonImage: some View {
        AsyncImage(url: vm.imageURL) { image in image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
    }
    
    /// The data/types of the `Pokemon`
    var summary: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Height")
                    .bold()
                Text(vm.height)
                Text("Weight")
                Text(vm.weight)
                Text("Type")
                HStack {
                    ForEach(vm.model.type, id: \.rawValue) { type in
                        Text(type.rawValue)
                    }
                }
                Text("Weaknesses")
                LazyVGrid(columns: [GridItem(alignment: .leading), GridItem(alignment: .leading)], spacing: 0) {
                    ForEach(vm.weaknesses, id: \.rawValue) { type in
                        Text(type.rawValue)
                    }
                }
                
                
            }
        }
    }
    
    /// The evolutionary forms of this `Pokemon`
    @ViewBuilder
    var evolutions: some View {
        Text("Evolutions")
            .pokeyFont(size: 20, dynamicSize: .title2)
        // MARK: Add to this. Be sure to use EvolutionView
    }
    
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(vm: PokemonDetailViewModel(pokemon: .example))
    }
}





