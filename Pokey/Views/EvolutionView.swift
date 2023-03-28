//
//  EvolutionView.swift
//  Pokey
//
//  Created by AlecNipp on 11/16/22.
//

import SwiftUI

/// The View for a Pokemon in the evolution gallery. Accepts a `Pokemon` as a paramter and returns a view dispaying that Pokemon with a nice white circle background.
struct EvolutionView: View {
    let pokemon: Pokemon
    var body: some View {
        VStack {
            AsyncImage(url: pokemon.imageURL) { image in image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .padding()
            .background(Color.white, in: Circle())
            .padding(.bottom)
            
            Text(pokemon.name)
                .pokeyFont(size: 14, dynamicSize: .body)
        }
    }
    
    
}
struct EvolutionView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.yellow
                .opacity(0.2)
                .ignoresSafeArea()
            EvolutionView(pokemon: .example)
        }
    }
}
