//
//  CharacterController.swift
//  MySmashCompanion
//
//  Created by Jake Haslam on 6/25/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

import UIKit

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
    // TODO: Add fetchGIF OR fetchImage func each move, Need to figure out gif issue and only using image right now add in specials later also Hero Menue specials 
    // how could we fetch the gifs from each move for each character dynamically?
    static private func fetchCharacterDataGifBackAir(for character: CharacterData.BackAir, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifBackThrow(for character: CharacterData.BackThrow, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifDashAttack(for character: CharacterData.DashAttack, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifDashGrab(for character: CharacterData.DashGrab, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifDownAir(for character: CharacterData.DownAir, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifDownSmash(for character: CharacterData.DownSmash, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifDownThrow(for character: CharacterData.DownThrow, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifDownTilt(for character: CharacterData.DownTilt, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifForwardAir(for character: CharacterData.ForwardAir, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifForwardSmash(for character: CharacterData.ForwardSmash, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifForwardTilt(for character: CharacterData.ForwardTilt, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifGrab(for character: CharacterData.Grab, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifJab(for character: CharacterData.Jab, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifJab1(for character: CharacterData.Jab1, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifJab2(for character: CharacterData.Jab2, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifRapidJab(for character: CharacterData.RapidJab, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifRapidJabFinisher(for character: CharacterData.RapidJabFinisher, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifPivotGrab(for character: CharacterData.PivotGrab, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifUpAir(for character: CharacterData.UpAir, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifUpSmash(for character: CharacterData.UpSmash, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifUpThrow(for character: CharacterData.UpThrow, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
    static private func fetchCharacterDataGifUpTilt(for character: CharacterData.UpTilt, completion: @escaping (Result<UIImage, CharacterDataError>) -> Void) {
        guard let characterGif = character.image else { return }
        guard let characterDataGifURL = URL(string: characterGif) else { return completion(.failure(.noData)) }
        print(characterDataGifURL)
        URLSession.shared.dataTask(with: characterDataGifURL) { data, _, error in
            if let error = error {
                return completion(.failure(.thrown(error)))
            }
            guard let data = data else { return completion(.failure(.noData)) }
            guard let characterDataGif = UIImage(data: data) else {
                return completion(.failure(.noData))
            }
            completion(.success(characterDataGif))
        }.resume()
    }
}// End of Class
