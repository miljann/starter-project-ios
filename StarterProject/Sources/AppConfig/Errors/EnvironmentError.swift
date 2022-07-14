//
//  EnvironmentError.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 14.7.22..
//

import Foundation

enum EnvironmentError: LocalizedError {
    case notDefined
}

extension EnvironmentError: CustomStringConvertible {
    
    var description: String {
        switch self {
        case .notDefined:
            return "Environment variable not defined in `.plist` for bundle: \(Bundle(for: AppConfigReader.self))"
        }
    }
    
    var localizedDescription: String {
        return "Environment variable not defined in `.plist` for bundle: \(Bundle(for: AppConfigReader.self))"
    }
}
