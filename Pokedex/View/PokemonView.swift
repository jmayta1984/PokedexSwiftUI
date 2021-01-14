//
//  PokemonView.swift
//  Pokedex
//
//  Created by profesor on 13/01/21.
//

import SwiftUI

struct PokemonView: View {
    var url: String
    
    @ObservedObject var pokemonViewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Weight: \(self.pokemonViewModel.pokemon.weight)")
                Text("Height: \(self.pokemonViewModel.pokemon.height)")
            }.navigationBarTitle(Text(self.pokemonViewModel.pokemon.name.capitalized))
        }.onAppear{
            self.pokemonViewModel.getPokemon(urlString: url)
        
        }
   
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(url: "Hola")
    }
}
