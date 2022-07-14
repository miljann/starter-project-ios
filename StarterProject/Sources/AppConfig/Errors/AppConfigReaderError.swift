//
//  AppConfigReaderError.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 14.7.22..
//

import Foundation

enum AppConfigReaderError: LocalizedError {
    case readingFailedFor(_ fileName: String)
}

extension AppConfigReaderError: CustomStringConvertible {
    var description: String {
        switch self {
        case .readingFailedFor(let filename):
            return "Failed to parse response for config: \(filename)"
        }
    }
    
    var errorDescription: String? {
        return description
    }
    
    var localizedDescription: String {
        return description
    }
}
