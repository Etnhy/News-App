//
//  NetworkManager.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import Foundation

import Alamofire
import AlamofireImage

protocol NetworkLayerProtocol {
//    func getNews(complition: @escaping(Result<[Article], Error>) -> ())
}

class NetworkManager: NetworkLayerProtocol {
    
    
    
    
    
    static let shared = NetworkManager()
    let apiKey = "&apiKey=3b7a57f2d0e3400e9193cd86f1ba0fb5"
    
    
    
    func geet() {
        print(" get data")
    }
    
    func getNews(complition: @escaping (Result<APIResponse, AFError>) -> ()) {
//        downloadJSON(url: MainCategoriesUrl.all, completion: complition)
        //    }/<T: Decodable>
        downloadJson(url: MainCategoriesUrl.all, completion: complition)
        print(complition)
    }
    
    fileprivate func downloadJson<T:Decodable>(url: String, completion:@escaping(Result<T,AFError>)-> Void) {
        
        let url = Configuration.Net.api_url + url + apiKey
        print("url ---- \(url)")
        
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil, interceptor: nil, requestModifier: {
            JSONResponse in
            JSONResponse.timeoutInterval = 10
        }).validate(statusCode: 200..<201).responseDecodable(of: T.self) { responseDecodable in
            switch responseDecodable.result {
            case .success(let response): print(response)
//                guard (response as! [T]) != nil else { return}
                completion(.success(response))
            case .failure(let error)   : print(error)
                
            }
        }
    }
    
//    func downloadJSON<T: Decodable>(url: String, completion: @escaping(Result<[T], Error>) -> ()) {
//        guard let url = URL(string: Configuration.Net.api_url + url + apiKey) else {return}
//        print(url)
//        let session = URLSession.shared
//        session.dataTask(with: url) { data, response, error in
//            if let error = error {
//                completion(.failure(error))
//            }
//            if let data = data {
//                do {
//                    let json = try JSONDecoder().decode([T].self, from: data)
//                    completion(.success(json as [T]))
//                } catch {
//                    completion(.failure(error))
//                    print(error.localizedDescription)
//                }
//            }
//        }.resume()
//    }
    
}

