//
//  DisneyDatailNextView.swift
//  Disney
//
//  Created by Rogerio Martins on 28/03/23.
//

import UIKit

class DisneyDatailNextView: UIView {
    
    let nameTableViewPark: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemRed
        label.text = "Park Attractions"
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        label.numberOfLines = 1
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBackground.cgColor
        label.layer.cornerRadius = 12
        label.clipsToBounds = true
        return label
    }()
    
    let tableViewPark: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    let nameTableViewFilm: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemRed
        label.text = "Film"
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        label.numberOfLines = 1
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBackground.cgColor
        label.layer.cornerRadius = 12
        label.clipsToBounds = true
        return label
    }()
    
    let tableViewFilm: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    let nameTableViewTvShows: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemRed
        label.text = "TV Shows"
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        label.numberOfLines = 1
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBackground.cgColor
        label.layer.cornerRadius = 12
        label.clipsToBounds = true
        return label
    }()
    
    let tableViewTvShows: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    let nameTableViewGames: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemRed
        label.textColor = .label
        label.text = "Video Games"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        label.numberOfLines = 1
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBackground.cgColor
        label.layer.cornerRadius = 12
        label.clipsToBounds = true
        return label
    }()
    
    let tableViewVideoGames: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    let myButtonList: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Voltar Lista", for: .normal)
        button.setTitleColor(UIColor.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemBlue
        return button
    }()
    
    let myButtonExit: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("INICIO", for: .normal)
        button.setTitleColor(UIColor.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemBlue
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupNamePark()
        setupTableViewPark()
        setupNameFilm()
        setupTableViewFilm()
        setupNameTvShow()
        setupTableViewTvShow()
        setupNameGames()
        setupTableViewGames()
        setupButtonExit()
    }
    
    func setupNamePark() {
        addSubview(nameTableViewPark)
        NSLayoutConstraint.activate([
            nameTableViewPark.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            nameTableViewPark.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameTableViewPark.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameTableViewPark.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupTableViewPark() {
        addSubview(tableViewPark)
        NSLayoutConstraint.activate([
            tableViewPark.topAnchor.constraint(equalTo: nameTableViewPark.bottomAnchor, constant: 2),
            tableViewPark.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableViewPark.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableViewPark.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func setupNameFilm() {
        addSubview(nameTableViewFilm)
        NSLayoutConstraint.activate([
            nameTableViewFilm.topAnchor.constraint(equalTo: tableViewPark.bottomAnchor, constant: 5),
            nameTableViewFilm.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameTableViewFilm.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameTableViewFilm.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupTableViewFilm() {
        addSubview(tableViewFilm)
        NSLayoutConstraint.activate([
            tableViewFilm.topAnchor.constraint(equalTo: nameTableViewFilm.bottomAnchor, constant: 2),
            tableViewFilm.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableViewFilm.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableViewFilm.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func setupNameTvShow() {
        addSubview(nameTableViewTvShows)
        NSLayoutConstraint.activate([
            nameTableViewTvShows.topAnchor.constraint(equalTo: tableViewFilm.bottomAnchor, constant: 5),
            nameTableViewTvShows.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameTableViewTvShows.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameTableViewTvShows.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupTableViewTvShow() {
        addSubview(tableViewTvShows)
        NSLayoutConstraint.activate([
            tableViewTvShows.topAnchor.constraint(equalTo: nameTableViewTvShows.bottomAnchor, constant: 2),
            tableViewTvShows.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableViewTvShows.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableViewTvShows.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func setupNameGames() {
        addSubview(nameTableViewGames)
        NSLayoutConstraint.activate([
            nameTableViewGames.topAnchor.constraint(equalTo: tableViewTvShows.bottomAnchor, constant: 5),
            nameTableViewGames.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameTableViewGames.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameTableViewGames.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupTableViewGames() {
        addSubview(tableViewVideoGames)
        NSLayoutConstraint.activate([
            tableViewVideoGames.topAnchor.constraint(equalTo: nameTableViewGames.bottomAnchor, constant: 2),
            tableViewVideoGames.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableViewVideoGames.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableViewVideoGames.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func setupButtonExit() {
        addSubview(myButtonExit)
        NSLayoutConstraint.activate([
            myButtonExit.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            myButtonExit.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            myButtonExit.widthAnchor.constraint(equalToConstant: 150),
            myButtonExit.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
