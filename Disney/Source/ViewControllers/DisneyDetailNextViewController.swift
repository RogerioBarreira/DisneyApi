//
//  DisneyDetailNextViewController.swift
//  Disney
//
//  Created by Rogerio Martins on 29/03/23.
//

import UIKit

class DisneyDetailNextViewController: UIViewController {
    
    let viewModelDisneyDetailNext = DisneyDetailNextViewModel()
    
    lazy var viewDisneyDetailNext: DisneyDatailNextView = {
        let view = DisneyDatailNextView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = viewModelDisneyDetailNext.nameCharacter
        setupTableViewPark()
        setupTableViewFilm()
        setupTableViewTvShow()
        setupTableViewGames()
        setupAction()
    }
    
    override func loadView() {
        self.view = viewDisneyDetailNext
    }
    
    func setupAction() {
        viewDisneyDetailNext.myButtonExit.addTarget(self, action: #selector(buttonExit), for: .touchUpInside)
    }
    
    func setupTableViewPark() {
        viewDisneyDetailNext.tableViewPark.delegate = self
        viewDisneyDetailNext.tableViewPark.dataSource = self
        viewDisneyDetailNext.tableViewPark.register(CellDisneyDetailNextTableViewCell.self, forCellReuseIdentifier: CellDisneyDetailNextTableViewCell.identifier)
    }
    
    func setupTableViewFilm() {
        viewDisneyDetailNext.tableViewFilm.delegate = self
        viewDisneyDetailNext.tableViewFilm.dataSource = self
        viewDisneyDetailNext.tableViewFilm.register(CellDisneyDetailNextTableViewCell.self, forCellReuseIdentifier: CellDisneyDetailNextTableViewCell.identifier)
    }
    
    func setupTableViewTvShow() {
        viewDisneyDetailNext.tableViewTvShows.delegate = self
        viewDisneyDetailNext.tableViewTvShows.dataSource = self
        viewDisneyDetailNext.tableViewTvShows.register(CellDisneyDetailNextTableViewCell.self, forCellReuseIdentifier: CellDisneyDetailNextTableViewCell.identifier)
    }
    
    func setupTableViewGames() {
        viewDisneyDetailNext.tableViewVideoGames.delegate = self
        viewDisneyDetailNext.tableViewVideoGames.dataSource = self
        viewDisneyDetailNext.tableViewVideoGames.register(CellDisneyDetailNextTableViewCell.self, forCellReuseIdentifier: CellDisneyDetailNextTableViewCell.identifier)
    }
        
    @objc
    func buttonExit() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

extension DisneyDetailNextViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case viewDisneyDetailNext.tableViewPark:
            return viewModelDisneyDetailNext.namePark
        case viewDisneyDetailNext.tableViewFilm:
            return viewModelDisneyDetailNext.nameFilms
        case viewDisneyDetailNext.tableViewTvShows:
            return viewModelDisneyDetailNext.nameTvShows
        case viewDisneyDetailNext.tableViewVideoGames:
            return viewModelDisneyDetailNext.nameVideoGames
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch tableView {
        case viewDisneyDetailNext.tableViewPark:
            if let cell = viewDisneyDetailNext.tableViewPark.dequeueReusableCell(withIdentifier: CellDisneyDetailNextTableViewCell.identifier, for: indexPath) as? CellDisneyDetailNextTableViewCell {
                cell.setupCellPark(name: viewModelDisneyDetailNext.cellForRowPark(indexPath: indexPath))
                return cell
            }
        case viewDisneyDetailNext.tableViewFilm:
            if let cell = viewDisneyDetailNext.tableViewFilm.dequeueReusableCell(withIdentifier: CellDisneyDetailNextTableViewCell.identifier, for: indexPath) as? CellDisneyDetailNextTableViewCell {
                cell.setupCellFilm(name: viewModelDisneyDetailNext.cellForRowFilms(indexPath: indexPath))
                return cell
            }
        case viewDisneyDetailNext.tableViewTvShows:
            if let cell = viewDisneyDetailNext.tableViewTvShows.dequeueReusableCell(withIdentifier: CellDisneyDetailNextTableViewCell.identifier, for: indexPath) as? CellDisneyDetailNextTableViewCell {
                cell.setupCellTvShow(name: viewModelDisneyDetailNext.cellForRowParktvShows(indexPath: indexPath))
                return cell
            }
        case viewDisneyDetailNext.tableViewVideoGames:
            if let cell = viewDisneyDetailNext.tableViewVideoGames.dequeueReusableCell(withIdentifier: CellDisneyDetailNextTableViewCell.identifier, for: indexPath) as? CellDisneyDetailNextTableViewCell {
                cell.setupCellGames(name: viewModelDisneyDetailNext.cellForRowVideoGames(indexPath: indexPath))
                return cell
            }
        default:
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
