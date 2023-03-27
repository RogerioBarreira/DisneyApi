//
//  CellDisneyFilmsTableViewCell.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit
import SDWebImage

class CellDisneyFilmsTableViewCell: UITableViewCell {

    static var identifier = "CellDisneyFilmsTableViewCell"
    
    let imageFilm: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .red
        image.contentMode = .scaleToFill
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = 12
        image.clipsToBounds = true
        return image
    }()
    
    let titleFilm: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        label.textColor = .white
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.cornerRadius = 12
        label.clipsToBounds = true
        return label
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        configConstraints()
    }
    
    func configConstraints() {
        setupImage()
        setupTitle()
    }
    
    func setupImage() {
        contentView.addSubview(imageFilm)
        NSLayoutConstraint.activate([
            imageFilm.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            imageFilm.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            imageFilm.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            imageFilm.heightAnchor.constraint(equalToConstant: 150),
            imageFilm.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    func setupTitle() {
        contentView.addSubview(titleFilm)
        NSLayoutConstraint.activate([
            titleFilm.centerYAnchor.constraint(equalTo: imageFilm.centerYAnchor),
            titleFilm.leadingAnchor.constraint(equalTo: imageFilm.trailingAnchor, constant: 10),
            titleFilm.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            titleFilm.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupCell(film: Datum) {
        let url = URL(string: film.imageURL ?? "")
        imageFilm.sd_setImage(with: url)
        titleFilm.text = film.name ?? ""
    }

}
