//
//  PokedexListView.swift
//  Pokey
//
//  Created by AlecNipp on 11/16/22.
//

import SwiftUI

struct PokedexListView: View {
    @StateObject var vm = PokedexViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundColor()
                ScrollView {
                    logo
                    LazyVStack {
                        Divider()
                        ForEach(vm.pokemon, id: \.num) { pokemon in
                            NavigationLink(destination: PokemonDetailView(vm: PokemonDetailViewModel(pokemon: pokemon))) {
                                PokedexListRowView(pokemon: pokemon)
                                    .frame(height: 50)
                            }
                            .buttonStyle(.plain)
                            Divider()
                        }
                    }
                }
                .padding()
            }
        }
    }
    
    var logo: some View {
        Image("pokey-logo")
            .resizable()
            .scaledToFit()
            .padding(.horizontal, 50)
    }
}

struct PokedexListView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexListView()
    }
}
