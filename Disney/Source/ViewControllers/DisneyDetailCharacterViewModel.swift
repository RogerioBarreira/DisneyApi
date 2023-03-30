//
//  DisneyDetailCharacterViewModel.swift
//  Disney
//
//  Created by Rogerio Martins on 28/03/23.
//

import UIKit

class DisneyDetailCharacterViewModel: NSObject {

    private var detailCharacter: Datum?
    //films, shortFilms, tvShows, videoGames: [String]?
    //let parkAttractions: [String]?
    var imageUrl: URL? {
        URL(string: detailCharacter?.imageURL ?? "")
    }
    
    var name: String {
        detailCharacter?.name ?? ""
    }
    
    var films: Int {
        detailCharacter?.films?.count ?? 0
    }
    
    var shortFilms: Int {
        detailCharacter?.shortFilms?.count ?? 0
    }
    
    var tvShows: Int {
        detailCharacter?.tvShows?.count ?? 0
    }
    
    var videoGames: Int {
        detailCharacter?.videoGames?.count ?? 0
    }
    
    var parkAttractions: Int {
        detailCharacter?.parkAttractions?.count ?? 0
    }
    
    func detailCharacter(detail: Datum) {
        self.detailCharacter = detail
    }
}
