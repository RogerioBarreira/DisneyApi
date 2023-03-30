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
    
    func startDisneyDetail(detail: Datum) {
        let viewController = DisneyDetailCharacterViewController()
        viewController.viewModelDisneyDetail.detailCharacter(detail: detail)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func startDisneyDetailNext(detail: Datum?) {
        let viewController = DisneyDetailNextViewController()
        viewController.viewModelDisneyDetailNext.getDisneyDetail(detail: detail)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func startList() {
        let viewController = DisneyCharacterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
