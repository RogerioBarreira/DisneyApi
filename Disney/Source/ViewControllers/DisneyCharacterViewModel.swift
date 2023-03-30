//
//  DisneyFilmsViewModel.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit

class DisneyCharacterViewModel: NSObject {
    
    private let worker = Worker()
    private var disneyFilms: [Datum] = []
    var name: String?
   
    var numberOfRows: Int {
        disneyFilms.count
    }
    
    func cellForRow(indexPath: IndexPath) -> Datum {
        return disneyFilms[indexPath.row]
    }
    
    func nameSelect(name: String?) {
        self.name = name
    }
    
    func requestDisneyViewModel(completion: @escaping(Bool) -> Void) {
        
        worker.workerDisney(nameChar: name) { disneyFilms, success in
            if success {
                self.disneyFilms = disneyFilms?.data ?? []
                    completion(true)
            } else {
                completion(false)
            }
        }
    }
}
