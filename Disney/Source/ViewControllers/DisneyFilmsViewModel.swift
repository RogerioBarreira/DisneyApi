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
    
    var loadinRequest = false
    var currentPage = 0
    var totalResult = 0
    
    func currentPageAdd() {
        return currentPage = currentPage + 1
    }
    
    var addDisney: [Datum] {
        return disneyFilms
    }
    
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
    
    func requestDisneyAddViewModel(completion: @escaping(Bool) -> Void) {
        loadinRequest = true
        worker.workerDisney(pageIn: currentPage) { disneyFilms, success in
            if success {
                if let disneyFilmsAdd = disneyFilms {
                    self.disneyFilms.append(contentsOf: disneyFilmsAdd.data ?? [])
                    self.totalResult = disneyFilms?.count ?? 0 
                    print("Total de resultado: \(self.totalResult)")
                    print("Total já carregados: \(self.disneyFilms.count)")
                }
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
