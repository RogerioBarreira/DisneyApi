//
//  DisneyDetailCharacterView.swift
//  Disney
//
//  Created by Rogerio Martins on 28/03/23.
//

import UIKit

class DisneyDetailCharacterView: UIView {
    
    let imageCharacter: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .systemBackground
        image.contentMode = .scaleAspectFill
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.systemBlue.cgColor
        image.layer.cornerRadius = 75
        image.clipsToBounds = true
        return image
    }()
    
    let nameCharacter: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemBlue
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
    
    let myButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Mais Detalhes", for: .normal)
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
        setupImage()
        setupTitle()
        setupButton()
    }
    
    func setupImage() {
        addSubview(imageCharacter)
        NSLayoutConstraint.activate([
            imageCharacter.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageCharacter.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageCharacter.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imageCharacter.heightAnchor.constraint(equalToConstant: 450),
        ])
    }
    
    func setupTitle() {
        addSubview(nameCharacter)
        NSLayoutConstraint.activate([
            nameCharacter.topAnchor.constraint(equalTo: imageCharacter.bottomAnchor, constant: 20),
            nameCharacter.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            nameCharacter.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            nameCharacter.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupButton() {
        addSubview(myButton)
        NSLayoutConstraint.activate([
            myButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            myButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            myButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            myButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}
