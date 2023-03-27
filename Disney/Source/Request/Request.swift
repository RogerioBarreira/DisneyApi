//
//  Request.swift
//  Disney
//
//  Created by Rogerio Martins on 27/03/23.
//

import UIKit

enum Method: String {
    case get = "GET"
}

class Request: NSObject {
    
    func request<T: Codable>(urlString: String, method: Method, custom: T.Type, completion: @escaping(T?,Bool) -> Void) {
        
        guard let url = URL(string: urlString) else {
            print("Erro na URL")
            return
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if error == nil {
                guard let response = response as? HTTPURLResponse else { return }
                if response.statusCode == 200 {
                    guard let data = data else { return }
                    do {
                        let objeto = try JSONDecoder().decode(custom.self, from: data)
                        DispatchQueue.main.async {
                            completion(objeto,true)
                        }
                    } catch {
                        print("Erro no JsonDecoder")
                        completion(nil,false)
                    }
                } else {
                    print("Erro de statusCode: \(response.statusCode)")
                    completion(nil,false)
                }
            } else {
                print(error as Any)
            }
        }
        task.resume()
    }
}
