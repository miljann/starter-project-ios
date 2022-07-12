//
//  MainCoordinator.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 12.7.22..
//

import UIKit

protocol MainCoordinator {
    var window: UIWindow! { get }
    
    func start(in sceneWindow: UIWindow)
}

final class RootCoordinator: MainCoordinator {
    private(set) var window: UIWindow!
    
    static let `default` = RootCoordinator()
    
    private let mainScreenCoordinator = MainScreenCoordinator()
    
    private init() {}
    
    func start(in sceneWindow: UIWindow) {
        let mainNavigationController = mainScreenCoordinator.navigationController
        sceneWindow.rootViewController = mainNavigationController
        sceneWindow.makeKeyAndVisible()
        
        self.window = sceneWindow
    }
}
