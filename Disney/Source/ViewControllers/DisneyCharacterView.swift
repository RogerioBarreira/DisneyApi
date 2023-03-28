//
//  DisneyFilmsView.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit

class DisneyCharacterView: UIView {
    
    let loading: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView()
        load.translatesAutoresizingMaskIntoConstraints = false
        load.color = .white
        load.backgroundColor = .clear
        load.style = .large
        return load
    }()
    
    let mySearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Digite o nome do personagem"
        return searchBar
    }()
    
    let myTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupTableView()
        setupLoad()
    }
    
    func setupTableView() {
        addSubview(myTableView)
        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            myTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            myTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            myTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func setupLoad() {
        addSubview(loading)
        NSLayoutConstraint.activate([
            loading.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loading.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
