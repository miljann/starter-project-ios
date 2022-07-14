//
//  AppConfig.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 14.7.22..
//

import Foundation

struct AppConfig: Decodable {
    
    private enum CodingKeys: String, CodingKey {
        case testJSONExample = "TestJSONExample"
    }
    
    let testJSONExample: URL
}
