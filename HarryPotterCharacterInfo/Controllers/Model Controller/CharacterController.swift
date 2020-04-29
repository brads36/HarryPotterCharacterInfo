//
//  CharacterController.swift
//  HarryPotterCharacterInfo
//
//  Created by Bryce Bradshaw on 4/29/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

import Foundation

class CharacterController {

    static func fetchCharacters(searchTerm: String, completion: @escaping (Result<Character, CharacterError>) -> Void) {
        let baseURL = URL(string: "https://www.potterapi.com/v1/characters/?key=$2a$10$CqrLaGG02kMpc.ktzwY7jurdzYDzocYb.K3A5Vg1QPq4wUTl0JUDW")
        guard let finalURL = baseURL else { return completion(.failure(.invalidURL))}
        
        URLSession.shared.dataTask(with: finalURL) { (data, _ , error) in
            if let error = error {
                print(error.localizedDescription)
                return completion(.failure(.thrownError(error)))
            }
            
            guard let data = data else {return completion(.failure(.noData))}

        }.resume()
        
//        static func fetchPokemon(searchTerm: String, completion: @escaping (Result<Pokemon, PokemonError>) -> Void) {
//
//            guard let baseURL = baseURL else { return completion(.failure(.invalidURL))}
//            let finalURL = baseURL.appendingPathComponent(searchTerm.lowercased())
//            print(finalURL)
//            URLSession.shared.dataTask(with: finalURL) { (data, _ , error) in
//                if let error = error {
//                    return completion(.failure(.thrownError(error)))
//                }
//
//                guard let data = data else { return completion(.failure(.noData)) }
//
//                do {
//                    let pokemon = try JSONDecoder().decode(Pokemon.self, from: data)
//                    return completion(.success(pokemon))
//                } catch let decodingError{
//                    return completion(.failure(.thrownError(decodingError)))
//                }
//
//                }.resume()
    }
}
