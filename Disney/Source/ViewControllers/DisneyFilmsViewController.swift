//
//  DisneyFilmsViewController.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit

class DisneyFilmsViewController: UIViewController {
    
    let viewModelDisney = DisneyFilmsViewModel()
    
    lazy var viewDisneyFilms: DisneyFilmsView = {
        let view = DisneyFilmsView()
        view.backgroundColor = .systemBlue
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "DisneyFilms"
        setupRequest()
    }
    
    override func loadView() {
        self.view = viewDisneyFilms
    }
    
    func setupRequest() {
        viewModelDisney.requestDisneyViewModel { success in
            if success {
                print("OK")
            } else {
                print("Error")
            }
        }
    }
}
