//
//  CharacterErrors.swift
//  HarryPotterCharacterInfo
//
//  Created by Bryce Bradshaw on 4/29/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

import Foundation

enum CharacterError: LocalizedError {
    
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String? {
        switch self {
            
        case .invalidURL:
            return "The server failed to reach the given url."
        case .thrownError(let error):
            return "Oops, there was an error: \(error.localizedDescription)"
        case .noData:
            return "The server failed to provide any data."
        case .unableToDecode:
            return "There was an error trying to decode the data."
        }
    }
}
