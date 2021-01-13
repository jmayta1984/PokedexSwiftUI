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
                Text("Weight: \(self.pokemonViewModel.pokemon?.weight ?? 0)")
                Text("Height: \(self.pokemonViewModel.pokemon?.height ?? 0)")
            }
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
