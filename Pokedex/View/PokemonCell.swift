//
//  PokemonCell.swift
//  Pokedex
//
//  Created by profesor on 14/01/21.
//

import SwiftUI
import URLImage

struct PokemonCell: View {
    let pokemon: Pokemon
    let position: Int
    
    var body: some View {
        ZStack{
            VStack{
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(8)
                URLImage(url: URL (string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(position+1).png")!){ image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 96, height: 96)
                        .padding([.leading, .trailing, .bottom],8)
                }
    
                        
            }
        }
        .background(Color.green)
        .cornerRadius(12)
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell(pokemon: Pokemon(), position: 0)
    }
}
