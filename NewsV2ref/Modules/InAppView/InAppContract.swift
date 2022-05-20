//
//  InAppContract.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 20.05.2022.
//

import Foundation


protocol InAppViewProtocol: AnyObject {
    func succes(items: [InAppModel])
    func failure(error: Error)
}
protocol InAppViewPresenterProtocol: AnyObject { //, networkManager: NetworkManager
    init(view: InAppViewProtocol, networkManager: NetworkManager)
    func set()
    var items: [InAppModel]? { get set }
}
