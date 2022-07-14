//
//  AppConfig.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 14.7.22..
//

import Foundation

final class AppConfigReader {
    
    static let `default` = AppConfigReader()
    static let environment = Environment.current()
    
    let response: AppConfig
    
    private init() {
        do {
            let configPlistName = "AppConfig-\(type(of: self).environment)"
            guard let path = Bundle(for: AppConfigReader.self).path(forResource: configPlistName, ofType: "plist"),
                  let data = FileManager.default.contents(atPath: path) else {
                throw AppConfigReaderError.readingFailedFor(configPlistName)
            }
            self.response = try PropertyListDecoder().decode(AppConfig.self, from: data)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
}
