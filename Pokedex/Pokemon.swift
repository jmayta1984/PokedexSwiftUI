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
    var name: String = ""
    var weight: Int = 0
    var height: Int = 0
}
