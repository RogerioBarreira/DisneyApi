//
//  DisneyFilmsViewController.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit

class DisneyFilmsViewController: UIViewController {
    
    lazy var viewDisneyFilms: DisneyFilmsView = {
        let view = DisneyFilmsView()
        view.backgroundColor = .systemBlue
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "DisneyFilms"
    }
    
    override func loadView() {
        self.view = viewDisneyFilms
    }
}
