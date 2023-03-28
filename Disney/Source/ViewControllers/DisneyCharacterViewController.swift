//
//  DisneyFilmsViewController.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit

class DisneyCharacterViewController: UIViewController {
    
    let viewModelDisney = DisneyCharacterViewModel()
    
    lazy var viewDisneyCharacter: DisneyCharacterView = {
        let view = DisneyCharacterView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "DisneyFilms"
        setupTableView()
        setupRequest()
    }
    
    override func loadView() {
        self.view = viewDisneyCharacter
    }
    
    func setupRequest() {
        viewDisneyCharacter.loading.startAnimating()
        viewModelDisney.requestDisneyViewModel { [weak self] success in
            guard let self = self else { return }
            self.viewDisneyCharacter.loading.stopAnimating()
            if success {
                self.viewDisneyCharacter.myTableView.reloadData()
            } else {
                print("Error")
            }
        }
    }
 
    func setupTableView() {
        viewDisneyCharacter.myTableView.delegate = self
        viewDisneyCharacter.myTableView.dataSource = self
        viewDisneyCharacter.myTableView.register(CellDisneyCharacterTableViewCell.self, forCellReuseIdentifier: CellDisneyCharacterTableViewCell.identifier)
    }
}

extension DisneyCharacterViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelDisney.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = viewDisneyCharacter.myTableView.dequeueReusableCell(withIdentifier: CellDisneyCharacterTableViewCell.identifier, for: indexPath) as? CellDisneyCharacterTableViewCell {
            cell.backgroundColor = .clear
            cell.setupCell(film: viewModelDisney.cellForRow(indexPath: indexPath))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
}
