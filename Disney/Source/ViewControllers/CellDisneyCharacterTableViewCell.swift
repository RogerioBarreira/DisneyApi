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
    
    let imageCell: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .systemBackground
        image.contentMode = .scaleToFill
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.systemBlue.cgColor
        image.layer.cornerRadius = 75
        image.clipsToBounds = true
        return image
    }()
    
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
        setupImage()
        setupTitle()
    }
    
    func setupImage() {
        contentView.addSubview(imageCell)
        let bottomConstraint = imageCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
        bottomConstraint.priority = .defaultHigh
        NSLayoutConstraint.activate([
            imageCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imageCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            bottomConstraint,
            imageCell.heightAnchor.constraint(equalToConstant: 150),
            imageCell.widthAnchor.constraint(equalToConstant: 150)
        ])

    }
    
    func setupTitle() {
        contentView.addSubview(nameCell)
        NSLayoutConstraint.activate([
            nameCell.centerYAnchor.constraint(equalTo: imageCell.centerYAnchor),
            nameCell.leadingAnchor.constraint(equalTo: imageCell.trailingAnchor, constant: 10),
            nameCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            nameCell.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupCell(film: Datum) {
        let url = URL(string: film.imageURL ?? "")
        imageCell.sd_setImage(with: url)
        nameCell.text = film.name ?? ""
    }
}
