//
//  CellDisneyFilmsTableViewCell.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit
import SDWebImage

class CellDisneyCharacterTableViewCell: UITableViewCell {

    static var identifier = "CellDisneyCharacterTableViewCell"
    
    let imageFilm: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .systemBackground
        image.contentMode = .scaleAspectFit
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.systemBlue.cgColor
        image.layer.cornerRadius = 75
        image.clipsToBounds = true
        return image
    }()
    
    let titleFilm: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        label.numberOfLines = 1
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
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
        let bottomConstraint = imageFilm.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
        bottomConstraint.priority = .defaultHigh
        NSLayoutConstraint.activate([
            imageFilm.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imageFilm.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            bottomConstraint,
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
