//
//  MainScreenViewController.swift
//  StarterProject
//
//  Created by Miljan Vukicevic on 12.7.22..
//

import UIKit

final class MainScreenViewController: CommonViewController {
    
    var viewModel: MainScreenViewModel!
    
    private let mainLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .preferredFont(forTextStyle: .title1)
        label.textColor = .label
        label.textAlignment = .center
        return label
    }()
    
    required init(viewModel: MainScreenViewModel) {
        super.init(nibName: nil, bundle: nil)
        
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setupSubviews() {
        view.backgroundColor = .systemBackground
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainLabel)
        
        mainLabel.text = viewModel.mainTitle
    }
    
    override func setupConstraints() {
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16.0).isActive = true
        mainLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16.0).isActive = true
    }
}
