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
    //https://api.disneyapi.dev/character?name=Mickey%20Mouse
    func workerDisney(nameChar: String?, completion:@escaping(Disney?,Bool)-> Void) {
        
        guard let name = nameChar else { return }
        let basePath = "https://api.disneyapi.dev/character?name="
        let url = "\(basePath)\(name)"
        print(url)
        
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
