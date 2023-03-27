//
//  DisneyFilmsViewModel.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit

class DisneyFilmsViewModel: NSObject {
    
    private let worker = Worker()
    private var disneyFilms: [Datum] = []
    
    var numberOfRows: Int {
        disneyFilms.count
    }
    
    func cellForRows(indexPath: IndexPath) -> Datum {
        disneyFilms[indexPath.row]
    }
    
    func requestDisneyViewModel(completion: @escaping(Bool) -> Void) {
        
        worker.workerDisney { disneyFilms, success in
            if success {
                self.disneyFilms = disneyFilms?.data ?? []
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
