//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by profesor on 13/01/21.
//

import Foundation

class PokemonViewModel: ObservableObject {
    
    @Published var pokemon = PokemonResponse()
    
    func getPokemon(urlString: String){
            
        let url = URL(string: urlString)!
        
        let session = URLSession.shared
        
        session.dataTask(with: url) {
            (data, response, error) in
                DispatchQueue.main.async {
                    self.pokemon = try! JSONDecoder().decode(PokemonResponse.self, from: data!)
                }
        }.resume()
    }
    
}
