//
//  CellDisneyDetailNextTableViewCell.swift
//  Disney
//
//  Created by Rogerio Martins on 29/03/23.
//

import UIKit

class CellDisneyDetailNextTableViewCell: UITableViewCell {
    
    static var identifier = "CellDisneyDetailNextTableViewCell"
    
    let nameCell: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemBlue
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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        configConstraints()
    }
    
    func configConstraints() {
        setupNameCell()
    }
    
    func setupNameCell() {
        contentView.addSubview(nameCell)
        NSLayoutConstraint.activate([
            nameCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            nameCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            nameCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            nameCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            nameCell.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupCellPark(name: String?) {
        nameCell.text = name
    }
    
    func setupCellFilm(name: String?) {
        nameCell.text = name
    }
    
    func setupCellTvShow(name: String?) {
        nameCell.text = name
    }
    
    func setupCellGames(name: String?) {
        nameCell.text = name
    }
}
