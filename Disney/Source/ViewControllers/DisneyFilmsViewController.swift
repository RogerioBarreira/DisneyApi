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
        setupTableView()
    }
    
    override func loadView() {
        self.view = viewDisneyFilms
    }
    
    func setupRequest() {
        viewDisneyFilms.loading.startAnimating()
        viewModelDisney.requestDisneyViewModel { [weak self] success in
            self?.viewDisneyFilms.loading.stopAnimating()
            if success {
                self?.viewDisneyFilms.myTableView.reloadData()
            } else {
                print("Error")
            }
        }
    }
    
    func setupTableView() {
        viewDisneyFilms.myTableView.delegate = self
        viewDisneyFilms.myTableView.dataSource = self
        viewDisneyFilms.myTableView.register(CellDisneyFilmsTableViewCell.self, forCellReuseIdentifier: CellDisneyFilmsTableViewCell.identifier)
    }
}

extension DisneyFilmsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelDisney.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = viewDisneyFilms.myTableView.dequeueReusableCell(withIdentifier: CellDisneyFilmsTableViewCell.identifier, for: indexPath) as? CellDisneyFilmsTableViewCell {
            cell.setupCell(film: viewModelDisney.cellForRows(indexPath: indexPath))
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
