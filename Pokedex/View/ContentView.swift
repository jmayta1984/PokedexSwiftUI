//
//  ContentView.swift
//  Pokedex
//
//  Created by profesor on 13/01/21.
//

import SwiftUI



struct PokemonRow: View {
    let name: String
    var body: some View {
        HStack (alignment: .center){
            Text(name.capitalized)

        }
    }
}

struct ContentView: View {
    
    @ObservedObject var pokedexViewModel = PokedexViewModel()
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                LazyVGrid(columns:  gridItems, spacing: 16){
                    ForEach(Array(self.pokedexViewModel.pokemons.enumerated()), id: \.offset){ index, pokemon in
                        NavigationLink(
                        destination:
                            PokemonView(url: pokemon.url)
                        ) {
                            PokemonCell(pokemon: pokemon, position: index)
                        }
                    }
                }
            }.navigationTitle(Text("Pokedex"))
        }.onAppear{
            self.pokedexViewModel.getPokemons()
        }
        
        /*
        NavigationView{
            List {
                ForEach(self.pokedexViewModel.pokemons, id: \.self){pokemon in
                    NavigationLink(destination: PokemonView(url: pokemon.url)){
                        PokemonRow(name: pokemon.name)
                        
                    }
                }
            }.navigationBarTitle(Text("Pokedex"))
        }.onAppear{
            self.pokedexViewModel.getPokemons()
        }
        */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
