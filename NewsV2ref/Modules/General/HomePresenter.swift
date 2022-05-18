//
//  HomePresenter.swift
//  NewsV2ref
//
//  Created by Evhenii Mahlena on 17.05.2022.
//

import Foundation

class HomePresenter: HomeViewPresenterProtocol {
    
    weak var view: HomeViewProtocol?
    weak var networkManager: NetworkManager?
    
    var items: [HomeCellModel]?
    
    required init(view: HomeViewProtocol, networkManager: NetworkManager) {
        self.view = view
        self.networkManager = networkManager
        set()
    }
    
    
    
    func set() {
        networkManager?.getNews(complition: { result in
            DispatchQueue.main.async { [unowned self] in
                switch result {
                case .success(let succes):
                    self.items = succes.articles.compactMap({
                        HomeCellModel(image: $0.urlToImage!,
                                      content: $0.title!,
                                      date: $0.publishedAt!,
                                      url: $0.url!) })
                    guard let items = items else { return }
                    self.view?.succes(items: items)
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        })
    }
    
    
}
