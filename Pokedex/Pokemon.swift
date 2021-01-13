//
//  Pokemon.swift
//  Pokedex
//
//  Created by profesor on 13/01/21.
//

import Foundation

struct PokedexResponse: Decodable {
    let results: [Pokemon]
}

struct Pokemon: Decodable, Hashable {
    let name: String
    let url: String
}

struct PokemonResponse: Decodable {
    let name: String
    
    let weight: Int
    let height: Int
}
