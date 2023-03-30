//
//  DisneyDetailCharacterViewController.swift
//  Disney
//
//  Created by Rogerio Martins on 28/03/23.
//

import UIKit
import SDWebImage

class DisneyDetailCharacterViewController: UIViewController {

    let viewModelDisneyDetail = DisneyDetailCharacterViewModel()
    
    lazy var viewDisneyDetail: DisneyDetailCharacterView = {
        let view = DisneyDetailCharacterView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = viewModelDisneyDetail.name
        setupUI()
    }
    
    override func loadView() {
        self.view = viewDisneyDetail
    }
    
    func setupUI() {
        setupImage()
        setupName()
    }
    
    func setupImage() {
        viewDisneyDetail.imageCharacter.sd_setImage(with: viewModelDisneyDetail.imageUrl)
    }
    
    func setupName() {
        viewDisneyDetail.nameCharacter.text = viewModelDisneyDetail.name
    }

}
