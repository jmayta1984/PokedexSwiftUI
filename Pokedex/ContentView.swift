//
//  ContentView.swift
//  Pokedex
//
//  Created by profesor on 13/01/21.
//

import SwiftUI

struct PokemonRowView: View {
    let name: String
    var body: some View {
        HStack (alignment: .center){
            Text(name.capitalized)

        }
    }
}

struct ContentView: View {
    
    @ObservedObject var pokedexViewModel = PokedexViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(self.pokedexViewModel.pokemons, id: \.self){pokemon in
                    NavigationLink(destination: PokemonView(url: pokemon.url)){
                        PokemonRowView(name: pokemon.name)
                        
                    }
                }
            }.navigationBarTitle(Text("Pokedex"))
        }.onAppear{
            self.pokedexViewModel.getPokemons()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
