//
//  HomeContract.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import Foundation
import Alamofire

protocol HomeViewProtocol: AnyObject {
    func succes(items: [HomeCellModel])
    func failure(error: AFError)
}
protocol HomeViewPresenterProtocol: AnyObject { //, networkManager: NetworkManager
    init(view: HomeViewProtocol, networkManager: NetworkManager)
    func set()
    var items: [HomeCellModel]? { get set }
}
