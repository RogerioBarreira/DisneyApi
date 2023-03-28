//
//  Coordinator.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit

class Coordinator: NSObject {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController?) {
        if navigationController == nil {
            self.navigationController = UINavigationController()
        }
        self.navigationController = navigationController ?? UINavigationController()
    }
    
    func startDisneyFilter() {
        let viewController = DisneyFilterCharacterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func startDisneyFilms(name: String?) {
        let viewController = DisneyCharacterViewController()
        viewController.viewModelDisney.nameSelect(name: name)
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
