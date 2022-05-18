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
    func getNews(complition: @escaping (Result<APIResponse, AFError>) -> ())}

final class NetworkManager: NetworkLayerProtocol {
    
    static let shared = NetworkManager()

    
    func getNews(complition: @escaping (Result<APIResponse, AFError>) -> ()) {
        downloadJson(url: MainCategoriesUrl.all, completion: complition)
        print(complition)
    }
    
    fileprivate func downloadJson<T:Decodable>(url: String, completion:@escaping(Result<T,AFError>)-> Void) {
        let url = Configuration.Net.api_url + url + Configuration.Net.apiKey
        print(url)
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil, interceptor: nil, requestModifier: {
            JSONResponse in
            JSONResponse.timeoutInterval = 10
        }).validate(statusCode: 200..<201).responseDecodable(of: T.self) { responseDecodable in
            switch responseDecodable.result {
            case .success(let response): print(response)
                completion(.success(response))
            case .failure(let error)   : print(error)
                completion(.failure(error))
            }
        }
    }
}

