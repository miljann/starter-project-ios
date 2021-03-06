//
//  Coordinator.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 12.7.22..
//

import UIKit

protocol Coordinator {
    var viewController: UIViewController { get }
}

protocol NavigatonControllerCoordinator: Coordinator {
    var navigationController: UINavigationController { get }
    
    @discardableResult
    func push() -> Bool
    
    @discardableResult
    func pop() -> Bool
}

extension NavigatonControllerCoordinator {
    func push() -> Bool {
        return false
    }
    
    func pop() -> Bool {
        return false
    }
}
