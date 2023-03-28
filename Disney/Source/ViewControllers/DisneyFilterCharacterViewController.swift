//
//  DisneyFilterCharacterViewController.swift
//  Disney
//
//  Created by Rogerio Martins on 28/03/23.
//

import UIKit

class DisneyFilterCharacterViewController: UIViewController {

    lazy var viewDisneyFilter: DisneyFilterCharacterView = {
        let view = DisneyFilterCharacterView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Filter"
        setupAction()
    }
    
    override func loadView() {
        self.view = viewDisneyFilter
    }
    
    func setupAction() {
        self.viewDisneyFilter.myButton.addTarget(self, action: #selector(nextViewController), for: .touchUpInside)
    }
    
    @objc
    func nextViewController() {
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startDisneyFilms(name: viewDisneyFilter.myNameText.text ?? "")
        
    }

}
