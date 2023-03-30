//
//  DisneyDetailNextViewModel.swift
//  Disney
//
//  Created by Rogerio Martins on 29/03/23.
//

import Foundation

class DisneyDetailNextViewModel: NSObject {
   
    private var detailDisneyNext: Datum?
    
    var nameCharacter: String {
        detailDisneyNext?.name ?? ""
    }
    
    var namePark: Int {
        detailDisneyNext?.parkAttractions?.count ?? 0
    }
    
    var nameFilms: Int {
        detailDisneyNext?.films?.count ?? 0
    }
    
    var nameTvShows: Int {
        detailDisneyNext?.tvShows?.count ?? 0
    }
    
    var nameVideoGames: Int {
        detailDisneyNext?.videoGames?.count ?? 0
    }
    
    func cellForRowPark(indexPath: IndexPath) -> String? {
        return detailDisneyNext?.parkAttractions?[indexPath.row]
    }
    
    func cellForRowFilms(indexPath: IndexPath) -> String? {
        return detailDisneyNext?.films?[indexPath.row]
    }
    
    func cellForRowParktvShows(indexPath: IndexPath) -> String? {
        return detailDisneyNext?.tvShows?[indexPath.row]
    }
    
    func cellForRowVideoGames(indexPath: IndexPath) -> String? {
        return detailDisneyNext?.videoGames?[indexPath.row]
    }
    
    func getDisneyDetail(detail: Datum?) {
        self.detailDisneyNext = detail
    }
}
