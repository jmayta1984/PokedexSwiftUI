//
//  PokedexViewModel.swift
//  Pokedex
//
//  Created by profesor on 13/01/21.
//

import Foundation

class PokedexViewModel: ObservableObject {
    
    @Published var pokemons = [Pokemon]()
    
    func getPokemons(){
        
        let stringUrl = "https://pokeapi.co/api/v2/pokemon"
        
        let url = URL(string: stringUrl)!
        
        let session = URLSession.shared
        
        session.dataTask(with: url){
            (data, response, error) in
            DispatchQueue.main.async {
                self.pokemons = try! JSONDecoder().decode(PokedexResponse.self, from: data!).results
            }
        }.resume()
        
        
    }
    
}
