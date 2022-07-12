//
//  MainScreenCoordinator.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 12.7.22..
//

import UIKit

final class MainScreenCoordinator: NavigatonControllerCoordinator {
    
    private(set) var viewController: UIViewController
    private(set) var navigationController: UINavigationController
    
    init() {
        let viewModel = MainScreenViewModel()
        self.viewController = MainScreenViewController(viewModel: viewModel)
        self.navigationController = UINavigationController(rootViewController: self.viewController)
    }
}
