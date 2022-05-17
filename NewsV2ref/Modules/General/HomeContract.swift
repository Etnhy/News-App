//
//  HomeContract.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import Foundation

protocol HomeViewProtocol: AnyObject {
    func succes()
    func failure()
}
protocol HomeViewPresenterProtocol: AnyObject { //, networkManager: NetworkManager
    init(view: HomeViewProtocol, networkManager: NetworkManager)
    func set()
    func geet()
    var items: [Article]? { get set }
}
