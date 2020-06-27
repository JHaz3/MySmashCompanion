//
//  CharacterDataError.swift
//  MySmashCompanion
//
//  Created by Jake Haslam on 6/26/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

import UIKit

enum CharacterDataError: LocalizedError {
    case thrown(Error)
    case invalidURL
    case noData
    case unableToDelete
    var errorDescription: String? {
        switch self {
        case .thrown(let error):
            return error.localizedDescription
        case .invalidURL:
            return "Unable to reach server"
        case .noData:
            return "Server responded with no data."
        case .unableToDelete:
            return "Unable to Delete"
        }
    }
}
