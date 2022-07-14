//
//  Environment.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 14.7.22..
//

import Foundation

enum Environment: String, CaseIterable {
    case debug
    case release
    
    static func current() -> Environment {
        guard let environmentString = Bundle.main.infoDictionary?["Environment"] as? String,
              let environment = Environment(rawValue: environmentString) else {
            fatalError(String(describing: EnvironmentError.notDefined))
        }
        return environment
    }
}
