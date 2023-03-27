//
//  Worker.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import Foundation

class Worker: NSObject {
    
    private let worker = Request()
    private var disneyFilm: Disney?
    
    func workerDisney(pageIn: Int = 0, completion:@escaping(Disney?,Bool)-> Void) {
        let pageDefault = 1
        let basePath = "https://api.disneyapi.dev/characters?"
        let page = "\(pageDefault + pageIn)"
        let url = "\(basePath)page=\(page)"
        
        worker.request(urlString: url, method: .get, custom: Disney.self) { [weak self] disneyFilm, success in
            guard let self = self else { return }
            if success {
                self.disneyFilm = disneyFilm
                completion(disneyFilm,true)
            } else {
                completion(nil,false)
            }
        }
    }
}
