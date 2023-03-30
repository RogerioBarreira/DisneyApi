//
//  DisneyFilterCharacterView.swift
//  Disney
//
//  Created by Rogerio Martins on 28/03/23.
//

import UIKit

class DisneyFilterCharacterView: UIView {
    
    let myNameText: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = .systemFont(ofSize: 20, weight: .semibold)
        text.textAlignment = .left
        text.placeholder = "Digite o Nome em Inglês"
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.systemBlue.cgColor
        text.layer.cornerRadius = 12
        text.textColor = .label
        text.borderStyle = .roundedRect
        text.backgroundColor = .systemBackground
        return text
    }()
    
    let myButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Buscar todos Personagens", for: .normal)
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
        setupNameText()
        setupButton()
    }
    
    func setupNameText() {
        addSubview(myNameText)
        NSLayoutConstraint.activate([
            myNameText.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            myNameText.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            myNameText.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            myNameText.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupButton() {
        addSubview(myButton)
        NSLayoutConstraint.activate([
            myButton.topAnchor.constraint(equalTo: myNameText.bottomAnchor, constant: 30),
            myButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            myButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            myButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
