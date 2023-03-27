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
    
    func startDisneyFilms() {
        let viewController = DisneyFilmsViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
