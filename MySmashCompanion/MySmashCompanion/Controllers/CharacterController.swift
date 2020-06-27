//
//  CharacterController.swift
//  MySmashCompanion
//
//  Created by Jake Haslam on 6/25/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

import Foundation

class CharacterController {
    // MARK: - Properties
    static let shared = CharacterController()
    var characterData: [CharacterData] = []
    
    static private let baseURL = URL(string: "https://smash-utlimate-python-api.herokuapp.com/")
    static private let searchKey = ""
    // Might need to change Character data to an array of character data in future?
    static private func fetchCharacterData(searchTerm: String, completion: @escaping (Result<CharacterData, CharacterDataError>) -> Void) {
        guard let baseURL = baseURL else { return completion(.failure(.invalidURL)) }
        
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        urlComponents?.queryItems = [
            URLQueryItem(name: searchKey, value: searchTerm)
        ]
        
        guard let finalURL = urlComponents?.url else { return completion(.failure(.invalidURL)) }
        print(finalURL)
        
        URLSession.shared.dataTask(with: finalURL) { data, _, error in
            
            if let error = error {
                print(error, error.localizedDescription)
                return completion(.failure(.noData))
            }
            
            guard let data = data else { return completion(.failure(.noData)) }
            
            do {
                let characterData = try JSONDecoder().decode(CharacterData.self, from: data)
                completion(.success(characterData))
            } catch {
                print(error, error.localizedDescription)
                return completion(.failure(.thrown(error)))
            }
        }.resume()
    }
    // TODO: Add fetchGIF OR fetchImage func
    // how will we fetch the gifs from each move for each character dynamically? will one work if we call it in each move using dot syntax?
    
}// End of Class
